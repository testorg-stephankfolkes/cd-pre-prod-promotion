
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: feature-test3', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
