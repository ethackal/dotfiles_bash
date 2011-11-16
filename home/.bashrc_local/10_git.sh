#Function to get the git branch of the pwd
function fp_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{\1}/'
}


# git command aliases
alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gcl="git clone"
alias gci="git commit"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gm="git merge"
alias gmv="git move"
alias gpull="git pull"
alias gpush="git push"
alias grebase="git rebase"
alias greset="git reset"
alias grm="git rm"
alias gshow="git show"
alias gs="git status"
alias gtag="git tag"

# git svn aliases
alias gsvn="git svn"
alias gdcommit="git svn dcommit"
alias gsvnrebase="git svn rebase"
