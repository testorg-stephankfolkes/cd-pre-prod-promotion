import java.io.File


process 'process', {
  processType = 'DEPLOY'

  processStep 'process step', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/app/applicationTiers/Tier 1/components/component/processes/process/processSteps/process step.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }
}
