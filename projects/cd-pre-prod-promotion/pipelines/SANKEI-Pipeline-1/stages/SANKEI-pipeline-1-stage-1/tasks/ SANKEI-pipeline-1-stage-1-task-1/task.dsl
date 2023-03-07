import java.io.File


task ' SANKEI-pipeline-1-stage-1-task-1', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/SANKEI-Pipeline-1/stages/SANKEI-pipeline-1-stage-1/tasks/ SANKEI-pipeline-1-stage-1-task-1.cmd").text,
  ]
  applicationVersion = 'dev'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
