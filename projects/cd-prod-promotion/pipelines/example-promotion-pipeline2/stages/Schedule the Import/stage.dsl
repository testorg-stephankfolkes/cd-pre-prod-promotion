
stage 'Schedule the Import', {
  description = 'Schedule the DSL import'
  colorCode = '#d62728'
  completionType = 'auto'
  pipelineName = 'example-promotion-pipeline2'
  projectName = 'cd-prod-promotion'
  resourceName = 'new-agent-flow-agents'
  waitForPlannedStartDate = '0'
}
