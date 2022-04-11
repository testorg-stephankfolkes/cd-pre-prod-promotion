
pluginConfiguration 'stephankfolkes Github', {
  description = ''
  credentialReferenceParameter = [
    'bearer_credential': '/projects/cd-pre-prod-promotion/credentials/GIT_PAT',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
    'ifRateLimitExceeded': 'error',
  ]
  pluginKey = 'EC-Github'
  projectName = 'cd-pre-prod-promotion'
}
