acl{
  inheriting = '0'
  aclEntry 'user', principalName: 'project: Shared-Service-Catalogues', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
  aclEntry 'user', principalName: 'project: feature-test3', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
  aclEntry 'user', principalName: 'project: CBCD_Platform_Core', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
