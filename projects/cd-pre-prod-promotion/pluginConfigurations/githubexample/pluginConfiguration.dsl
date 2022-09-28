
pluginConfiguration 'githubexample', {
  description = ''
  credentialReferenceParameter = [
    'bearer_credential': '/projects/cd-pre-prod-promotion/credentials/next_cd_instance_creds_read_only',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
  ]
  pluginKey = 'EC-Github'
}
