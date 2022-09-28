import groovy.json.JsonSlurper
import com.electriccloud.client.groovy.ElectricFlow

ElectricFlow ef = new ElectricFlow()

String jsonString = ''

try{
  jsonString = ef.getProperty( propertyName: '/myPipelineRuntime/webhookData').property.value
}catch(Exception e){
  println("Exception: ${e}")
  error("Webhook data is empty. Stopping the import pipeline. Please trigger with a push event.")
}

JsonSlurper slurper = new JsonSlurper()
Map parsedJson = slurper.parseText(jsonString)

String clone_url = parsedJson.repository.clone_url
String git_repo_name = parsedJson.repository.name

ef.setProperty( propertyName: '/myPipelineRuntime/git_repo', value: git_repo_name)
ef.setProperty( propertyName: '/myPipelineRuntime/git_clone_url', value: clone_url)
ef.setProperty( propertyName: '/myPipelineRuntime/commit_sha', value: ef.getProperty( propertyName: '/myPipelineRuntime/parsedWebhookData/commitId').property.value)
ef.setProperty( propertyName: '/myPipelineRuntime/base_ref', value: ef.getProperty( propertyName: '/myPipelineRuntime/parsedWebhookData/branch').property.value)
ef.setProperty( propertyName: '/myPipelineRuntime/group-CRApprover', value: 'Infodir-' + git_repo_name + '-cbcd-crApprover')
ef.setProperty( propertyName: '/myPipelineRuntime/group-ProjectAdmin', value: 'Infodir-' + git_repo_name + '-cbcd-projectAdmin')
ef.setProperty( propertyName: '/myPipelineRuntime/group-DevOps', value: 'Infodir-' + git_repo_name + '-cbcd-devops')