import java.io.File


process 'SANKEI-ApplicationProcess', {
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'SANKEI-ApplicationProcessStep-1', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/SANKEI-Application-1/processes/SANKEI-ApplicationProcess/processSteps/SANKEI-ApplicationProcessStep-1.cmd").text,
    ]
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
