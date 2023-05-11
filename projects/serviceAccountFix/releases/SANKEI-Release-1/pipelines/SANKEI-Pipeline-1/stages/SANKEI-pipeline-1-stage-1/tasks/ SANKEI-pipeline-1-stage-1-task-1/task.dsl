import java.io.File


task ' SANKEI-pipeline-1-stage-1-task-1', {
  applicationVersion = 'dev'
  command = new File(projectDir, "./releases/SANKEI-Release-1/pipelines/SANKEI-Pipeline-1/stages/SANKEI-pipeline-1-stage-1/tasks/ SANKEI-pipeline-1-stage-1-task-1.cmd").text
  taskType = 'COMMAND'
}
