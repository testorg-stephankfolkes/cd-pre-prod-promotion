import java.io.File

def propertyContent = new File(propsDir, 'command.txt').text

property 'command', value: 'echo SANKEI-pipeline-1-stage-1-task-1'
