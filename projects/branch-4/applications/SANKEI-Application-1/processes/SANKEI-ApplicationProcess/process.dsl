import java.io.File


process 'SANKEI-ApplicationProcess', {
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'SANKEI-ApplicationProcessStep-1', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/SANKEI-Application-1/processes/SANKEI-ApplicationProcess/processSteps/SANKEI-ApplicationProcessStep-1.cmd").text,
    ]
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
