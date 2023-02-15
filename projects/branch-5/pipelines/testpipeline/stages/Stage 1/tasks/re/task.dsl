import java.io.File


task 're', {
  description = '123 desc'
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/testpipeline/stages/Stage 1/tasks/re.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
