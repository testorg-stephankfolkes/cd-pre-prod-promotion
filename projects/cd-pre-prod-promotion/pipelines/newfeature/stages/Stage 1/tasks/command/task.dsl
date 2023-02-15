import java.io.File


task 'command', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/newfeature/stages/Stage 1/tasks/command.cmd").text,
  ]
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
