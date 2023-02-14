
pluginConfiguration 'SANKEI-Plugin-1', {
  description = ''
  credentialReferenceParameter = [
    'bearer_credential': '/projects/cd-pre-prod-promotion/credentials/SANKEI-Credentials-1',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
    'ifRateLimitExceeded': 'error',
  ]
  pluginKey = 'EC-Github'
}
