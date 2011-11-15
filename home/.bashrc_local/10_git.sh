#Function to get the git branch of the pwd
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{\1}/'
}

#set up Flexible Prompt to show git branch of pwd
if test ${__FLEXIBLE_PROMPT__+defined}
then
  
  GREEN="\[\033[0;32m"
  NORM="\[\033[0m"
  PS1_PWD_POSTFIX="$GREEN\$(parse_git_branch)$NORM$PS1_PWD_POSTFIX"
  
  set_flexible_prompt
fi

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
alias gstatus="git status"
alias gtag="git tag"

# git svn aliases
alias gsvn="git svn"
alias gdcommit="git svn dcommit"
alias gsvnrebase="git svn rebase"
