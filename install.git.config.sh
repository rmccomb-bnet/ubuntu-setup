#extra stuffs
#awesome git commands
echo "  Git"
#config
echo "    Git Config"
git config --global user.name "Sy Le"
git config --global core.excludesfile ${HOME}/.gitignore
git config --global core.autocrlf input
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global diff.prompt false
git config --global merge.tool vimdiff
git config --global merge.prompt false


#git alias
echo "    Git Aliases"
git config --global alias.del-merged         "!git branch --merged | grep -v '*' | xargs git branch -d"
git config --global alias.del-merged-staging "!git branch --merged origin/staging | grep -v '*' | xargs git branch -d"
git config --global alias.unstage 'reset HEAD --'
git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.coo 'checkout --orphan' # new branch no history
git config --global alias.cp 'cherry-pick'
git config --global alias.cpn 'cherry-pick -n'
git config --global alias.cm 'commit'
git config --global alias.clone-shallow 'clone --depth 1 -b master'
git config --global alias.del 'branch -D'
git config --global alias.b 'branch'
git config --global alias.br 'branch -v'
git config --global alias.diff-no-space 'diff -w'
git config --global alias.d-no-space 'diff -w'
git config --global alias.d 'git diff --word-diff'
git config --global alias.brav 'branch -av'
git config --global alias.p "push origin"
git config --global alias.pd "push origin"
git config --global alias.push-delete "push -d"
git config --global alias.pushd "push -d"
git config --global alias.del-push "push -d"
git config --global alias.p-force "push --force-with-lease origin"
git config --global alias.graph "log --all --graph --pretty=format:'%Cred%h%Creset%C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset' --abbrev-commit --date=relative"
git config --global alias.logs 'log --oneline --decorate'
git config --global alias.l "log --pretty=format:'%Cred%h%Creset %s %Cgreen%cr %C(bold blue)%an%Creset' --abbrev-commit --date=relative"
git config --global alias.r 'rebase'
git config --global alias.reb 'rebase'
git config --global alias.ri 'rebase -i'
git config --global alias.fap 'fetch --all --prune'
git config --global alias.st 'status'
git config --global alias.s 'status -sb'
git config --global alias.amend 'commit --amend'
git config --global alias.nuke '!git reset --hard && git clean -dfx && git gc && git prune'
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it '!git init && git commit -m "root" --allow-empty'
git config --global alias.stash-all 'stash --all'
git config --global alias.fix-author 'commit --amend --reset-author'



echo "    Git Global Ignores"
curl -s https://raw.githubusercontent.com/synle/ubuntu-setup/master/misc/gitignoreGlobal > ${HOME}/.gitignore

#end git
