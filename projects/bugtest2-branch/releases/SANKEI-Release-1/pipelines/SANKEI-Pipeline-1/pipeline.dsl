
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'bugtest2-branch'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
