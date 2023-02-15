import java.io.File


task 'SANKEI-Add task to pipeline', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/newfeature/stages/Stage 1/tasks/SANKEI-Add task to pipeline.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
