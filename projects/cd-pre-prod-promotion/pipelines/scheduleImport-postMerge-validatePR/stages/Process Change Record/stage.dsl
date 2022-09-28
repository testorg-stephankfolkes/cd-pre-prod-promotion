
stage 'Process Change Record', {
  description = 'Process the change record and check it against ServiceNow endpoints.'
  completionType = 'auto'
  resourceName = 'gateway-internal-agent'
  waitForPlannedStartDate = '0'
}
