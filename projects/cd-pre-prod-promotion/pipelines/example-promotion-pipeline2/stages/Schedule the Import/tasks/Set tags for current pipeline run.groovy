import com.electriccloud.client.groovy.ElectricFlow

ElectricFlow ef = new ElectricFlow()

def currentPipelineFlowRuntimeId = '$[/myPipelineRuntime/flowRuntimeId]'
def git_repo = ef.getProperty(propertyName: "/myPipelineRuntime/git_repo").property.value

ef.tagObject(tags: [git_repo], flowRuntimeId: currentPipelineFlowRuntimeId)