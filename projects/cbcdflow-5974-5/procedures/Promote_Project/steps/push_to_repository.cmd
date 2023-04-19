cd $[/myProcedure/clone_directory]

git remote set-url origin https://$(ectool getFullCredential git-creds-pat --value password)@$[/myProcedure/gitScmDomain]/$[/myProcedure/SCM_ORG]/$[/myJob/shortProjectName].git
git push -u origin $[newPRBranch]
