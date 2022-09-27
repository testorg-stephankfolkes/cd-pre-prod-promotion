import groovy.io.FileType
import com.electriccloud.client.groovy.ElectricFlow

ElectricFlow ef = new ElectricFlow()

def pN = '$[targetImportProjectName]'


def path = "dsl"+pN+"/credentials"
dh = new File(path)
dh.eachFile { f ->
    
    def filePath = path+"/"+f.name+"/credential.dsl"
    println(filePath)
    
    def fileContent = new File(filePath).text

    def result = ef.evalDsl(
                dsl: fileContent,
                overwrite: true)
}
