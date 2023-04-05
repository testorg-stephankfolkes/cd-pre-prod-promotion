
pipeline 'pipeline_testrel', {

  formalParameter 'param', {
    orderIndex = '1'
    propertyReference = '$[/projects/feature-branch-demo/appChangeType]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
