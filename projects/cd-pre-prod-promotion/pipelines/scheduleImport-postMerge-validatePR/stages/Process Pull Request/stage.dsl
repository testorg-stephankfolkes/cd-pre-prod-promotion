
stage 'Process Pull Request', {
  description = 'Clone the PR for the import, and run checks'
  completionType = 'auto'
  resourceName = 'gateway-internal-agent'
  waitForPlannedStartDate = '0'
}
