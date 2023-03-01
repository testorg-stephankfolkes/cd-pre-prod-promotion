import java.io.File


process 'Test_App_Process_1', {
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'Test_App_Process_Step_1', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Test_App_1/processes/Test_App_Process_1/processSteps").text,
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
