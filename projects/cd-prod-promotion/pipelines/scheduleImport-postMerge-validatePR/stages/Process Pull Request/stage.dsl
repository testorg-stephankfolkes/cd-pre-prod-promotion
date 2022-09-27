
stage 'Process Pull Request', {
  description = 'Clone the PR for the import, and run checks'
  completionType = 'auto'
  pipelineName = 'scheduleImport-postMerge-validatePR'
  projectName = 'cd-prod-promotion'
  resourceName = 'gateway-internal-agent'
  waitForPlannedStartDate = '0'
}
