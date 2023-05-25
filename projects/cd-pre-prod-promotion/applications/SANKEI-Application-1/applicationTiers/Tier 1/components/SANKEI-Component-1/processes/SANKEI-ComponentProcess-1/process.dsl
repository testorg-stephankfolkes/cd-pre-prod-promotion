import java.io.File


process 'SANKEI-ComponentProcess-1', {
  processType = 'DEPLOY'

  processStep 'SANKEI-ComponentStep-1', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/SANKEI-Application-1/applicationTiers/Tier 1/components/SANKEI-Component-1/processes/SANKEI-ComponentProcess-1/processSteps/SANKEI-ComponentStep-1.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }
}
