import java.io.File


process 'SANKEI-ApplicationProcess', {
  description = ''
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  timeLimit = ''
  timeLimitUnits = 'minutes'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    description = ''
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'SANKEI-ApplicationProcessStep-1', {
    description = ''
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/SANKEI-Application-1/processes/SANKEI-ApplicationProcess/processSteps/SANKEI-ApplicationProcessStep-1.cmd").text,
    ]
    allowSkip = '0'
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    timeLimit = ''
    timeLimitUnits = 'minutes'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {
      description = ''

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
