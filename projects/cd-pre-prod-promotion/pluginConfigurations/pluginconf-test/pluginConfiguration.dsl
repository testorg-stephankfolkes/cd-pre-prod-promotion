
pluginConfiguration 'pluginconf-test', {
  description = ''
  credentialReferenceParameter = [
    'credential': '/projects/cd-pre-prod-promotion/credentials/prod_cd_instance_read_only',
  ]
  field = [
    'authType': 'password',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': 'false',
    'library': 'jgit',
  ]
  pluginKey = 'EC-Git'
  projectName = 'cd-pre-prod-promotion'
}
