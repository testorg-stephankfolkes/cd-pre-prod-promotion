import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
import java.time.LocalDate

ElectricFlow ef = new ElectricFlow()

def projName = ef.getProperty(propertyName: "/myPipeline/projName").property.value
def git_repo = ef.getProperty(propertyName: "/myPipelineRuntime/git_repo").property.value
def git_conf = ef.getProperty(propertyName: "/myTask/ec-git_configuration").property.value
def importProcedureName = ef.getProperty(propertyName: "/myPipeline/importProcedure").property.value
def time = "$[/myStageRuntime/tasks["Collect Change Window Data"]/time]"
time = time.replaceAll(":","-")
def schName = time + '-$[/myStageRuntime/tasks["Collect Change Window Data"]/date]-' + git_repo

LocalDate parsedDate = LocalDate.parse('$[/myStageRuntime/tasks["Collect Change Window Data"]/date]')
def String expiryDate = parsedDate.plusDays(1)

def params = [
	new ActualParameter('ec-git_configuration', git_conf),
	new ActualParameter('gitRepoUrl', ef.getProperty(propertyName: "/myPipelineRuntime/git_clone_url").property.value ),
	new ActualParameter('cloneBranch', ef.getProperty(propertyName: "/myPipelineRuntime/base_ref").property.value ),
	new ActualParameter('resource_OR_pool_name', ef.getProperty(propertyName: "/myPipeline/defaultResourceOrPool").property.value ),
  new ActualParameter('targetImportProjectName', '/projects/' + git_repo )
]

def result = ef.createSchedule(
                projectName: projName, scheduleName: schName,
                description: '', procedureName: importProcedureName,
                subproject: projName, misfirePolicy: 'runOnce',
                beginDate: '$[/myStageRuntime/tasks["Collect Change Window Data"]/date]', endDate: expiryDate,
                timeZone: '$[/myStageRuntime/tasks["Collect Change Window Data"]/timeZone]', startTime: '$[/myStageRuntime/tasks["Collect Change Window Data"]/time]',
                actualParameters: params )

ef.setProperty( propertyName: '/myPipelineRuntime/associatedScheduleName', value: schName)
ef.setProperty( propertyName: '/projects/' + projName + '/schedules/' + schName + '/associatedPipelineRun', value: '$[/myPipelineRuntime/flowRuntimeName]')