
acl {
  inheriting = '1'

  aclEntry 'group', principalName: 'Infodir-branch-10-cbcd-baseuser', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'group', principalName: 'Infodir-branch-10-cbcd-devops', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'group', principalName: 'Infodir-branch-10-cbcd-projectAdmin', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'user', principalName: 'autotests', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'user', principalName: 'project: branch-10', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
