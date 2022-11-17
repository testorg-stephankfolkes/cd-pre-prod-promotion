import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
import groovy.json.JsonSlurper

ElectricFlow ef = new ElectricFlow()

//def String output = ef.getPluginConfiguration(projectName: 'cd-pre-prod-promotion', pluginConfigurationName: 'Git_w_CLI').credentialMappings.value
//def String output = ef.getPluginConfiguration(projectName: 'cd-pre-prod-promotion', pluginConfigurationName: 'Git_w_CLI')
def String output = ef.getPluginConfiguration(projectName: 'cd-pre-prod-promotion', pluginConfigurationName: 'Git_w_CLI').pluginConfiguration.credentialMappings.parameterDetail.parameterValue
println output.minus("]").minus("[").trim()

/*def result = ef.getPluginConfiguration(
                projectName: 'cd-pre-prod-promotion',
                pluginConfigurationName: 'Git_w_CLI')
                
println result

JsonSlurper slurper = new JsonSlurper()
Map parsedJson = slurper.parseText(result)

String idValue2 = parsedJson.get("owner")

println idValue2

def result = ef.getPluginConfiguration(
                projectName: 'cd-pre-prod-promotion',
                pluginConfigurationName: 'Git_w_CLI').values()*/