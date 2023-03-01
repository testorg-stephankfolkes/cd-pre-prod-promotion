import java.io.File


process 'Test_Component_Process_1', {
  processType = 'DEPLOY'

  processStep 'Test_Component_Process_Step_1', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Test_App_1/applicationTiers/Tier 1/components/Test_Component_1/processes/Test_Component_Process_1/processSteps/Test_Component_Process_Step_1.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }
}
