
catalogItem 'Promote_Project', {
  description = '''<xml>
  <title>
    Promotes the chosen project to be imported into the next CD/ARO instance.
  </title>

  <htmlData>
    <![CDATA[
      Promote a project in its current state to be imported into the next CD/ARO instance, via source code managmeent change controls.
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'Create'
  catalogName = 'cd-promotion'
  dslParamForm = ''
  dslString = ''
  iconUrl = 'icon-process.svg'
  projectName = 'cd-pre-prod-promotion'
  subprocedure = 'Promote_Project'
  useFormalParameter = '0'
}
