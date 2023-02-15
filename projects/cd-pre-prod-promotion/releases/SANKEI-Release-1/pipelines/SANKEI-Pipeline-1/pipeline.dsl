
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'cd-pre-prod-promotion'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
