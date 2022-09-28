import com.electriccloud.client.groovy.ElectricFlow
ElectricFlow ef = new ElectricFlow()

def currentJobId = '$[/myJob/jobId]'
def pN = '$[targetImportProjectName]'
pN = pN.replaceAll('/projects/', '')

ef.tagObject(tags: [pN], jobId: currentJobId)