import java.io.File


task 'SANKEI-pipeline-1-stage-2-test', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/SANKEI-Release-1/pipelines/SANKEI-Pipeline-1/stages/SANKEI-pipeline-1-stage-2/tasks/SANKEI-pipeline-1-stage-2-test.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
