import java.io.File


task 'SANKEI-pipeline-1-stage-2-task-1', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/SANKEI-Pipeline-1/stages/SANKEI-pipeline-1-stage-2/tasks/SANKEI-pipeline-1-stage-2-task-1.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
