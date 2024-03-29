
pluginConfiguration 'stephankfolkes Github', {
  credentialReferenceParameter = [
    'bearer_credential': '/projects/CBCD_Platform_Core/credentials/GIT_PAT_Stephan',
  ]
  field = [
    'bearer_credential': 'bearer_credential',
    'debugLevel': '0',
    'endpoint': 'https://api.github.com',
    'ifRateLimitExceeded': 'error',
  ]
  pluginKey = 'EC-Github'
}
