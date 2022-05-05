
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: cd-pre-prod-promotion', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
