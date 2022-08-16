import java.io.File


process 'process', {
  processType = 'DEPLOY'
  projectName = 'cd-pre-prod-promotion'
  timeLimitUnits = 'minutes'

  processStep 'process step', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/app/applicationTiers/Tier 1/components/component/processes/process/processSteps/process step.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'cd-pre-prod-promotion'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }
}
