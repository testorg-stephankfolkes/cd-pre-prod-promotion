
pluginConfiguration 'SANKEI-Plugin-1', {
  credentialReferenceParameter = [
    'bearer_credential': '/projects/import-test-branch1/credentials/SANKEI-Credentials-1',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
    'ifRateLimitExceeded': 'error',
  ]
  pluginKey = 'EC-Github'
}
