
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-JIRA-1230'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
