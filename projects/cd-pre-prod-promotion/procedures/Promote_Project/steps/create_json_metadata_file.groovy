import groovy.json.JsonOutput
import com.electriccloud.client.groovy.ElectricFlow


ElectricFlow ef = new ElectricFlow()


//def ctime = String.format('%tF %<tH:%<tM', java.time.LocalDateTime.now())
def ctime = String.format('%1$tY%1$tm%1$tdT%1$tH%1$tM%1$tS', java.time.LocalDateTime.now())
def branch = 'pr-$[shortProjectName]-' + ctime
def String cloneDir = ef.getProperty(propertyName: "/myProcedure/clone_directory").property.value
def outFile = cloneDir.trim() + '/metadata.json'

def data = [
    project_name: "$[shortProjectName]",
    change_id: "$[change_record_id]",
    branch: branch,
    time_stamp: ctime

]

def json_str = JsonOutput.toJson(data)

def json_beauty = JsonOutput.prettyPrint(json_str)
println(json_beauty)

new File(outFile).write(json_beauty)

ef.setProperty( propertyName: '/myJob/newPRBranch', value: branch)

ef.setProperty( propertyName: '/myJob/changeCreationTime', value: ctime)

ef.setProperty( propertyName: '/myJob/jsonDetails', value: json_beauty)

ef.setProperty( propertyName: '/myJob/clone_directory', value: cloneDir.trim())
