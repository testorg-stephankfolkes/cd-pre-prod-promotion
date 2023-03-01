
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'import-test-branch1'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
