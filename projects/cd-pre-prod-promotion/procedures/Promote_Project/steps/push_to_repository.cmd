cd $[/myJob/clone_directory]

git remote set-url origin https://$(ectool getFullCredential "$[/myJob/credPath]" --value password)@github.com/$[/myProcedure/SCM_ORG]/$[/myJob/shortProjectName].git
git push -u origin $[newPRBranch]
