
catalogItem 'promote_experiment', {
  description = '''<xml>
  <title>
    Promotes an experimental project
into a non experimental version
in preparation for promotion to production.
  </title>

  <htmlData>
    <![CDATA[
      An experimental project should have a non experimental target. If the target does not appear in the selection box, select create project and the process will create the project for you.
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'promote'
  catalogName = 'cd-promotion'
  dslParamForm = ''
  dslString = ''
  iconUrl = 'icon-process.svg'
  projectName = 'cd-pre-prod-promotion'
  subprocedure = 'promote_experiment'
  useFormalParameter = '0'
}
