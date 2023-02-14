import java.io.File


process 'process', {
  description = ''
  processType = 'DEPLOY'
  timeLimit = ''
  timeLimitUnits = 'minutes'

  processStep 'process step', {
    description = ''
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/app/applicationTiers/Tier 1/components/component/processes/process/processSteps/process step.cmd").text,
    ]
    allowSkip = '0'
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    timeLimit = ''
    timeLimitUnits = 'minutes'
    useUtilityResource = '0'
  }
}
