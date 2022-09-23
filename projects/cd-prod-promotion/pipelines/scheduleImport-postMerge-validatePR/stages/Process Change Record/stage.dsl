
stage 'Process Change Record', {
  description = 'Process the change record and check it against ServiceNow endpoints.'
  completionType = 'auto'
  pipelineName = 'scheduleImport-postMerge-validatePR'
  projectName = 'cd-prod-promotion'
  resourceName = 'gateway-internal-agent'
  waitForPlannedStartDate = '0'
}
