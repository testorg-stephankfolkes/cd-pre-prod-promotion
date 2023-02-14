import java.io.File


process 'SANKEI-ComponentProcess-1', {
  description = ''
  processType = 'DEPLOY'
  timeLimit = ''
  timeLimitUnits = 'minutes'

  processStep 'SANKEI-ComponentStep-1', {
    description = ''
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/SANKEI-Application-1/applicationTiers/Tier 1/components/SANKEI-Component-1/processes/SANKEI-ComponentProcess-1/processSteps/SANKEI-ComponentStep-1.cmd").text,
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
