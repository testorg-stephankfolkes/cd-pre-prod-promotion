
pluginConfiguration 'SANKEI-Plugin-1', {
  credentialReferenceParameter = [
    'bearer_credential': '/projects/branch-nimbus-test-runtime-reference/credentials/SANKEI-Credentials-1',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
    'ifRateLimitExceeded': 'error',
  ]
  pluginKey = 'EC-Github'
}
