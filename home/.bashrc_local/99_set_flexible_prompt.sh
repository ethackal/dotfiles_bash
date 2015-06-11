function set_flexible_prompt {
  local red="\\[\033[31m\\]" 
  local green="\\[\033[32m\\]" 
  local yellow="\\[\033[33m\\]" 
  local blue="\\[\033[34m\\]" 
  local clear="\\[\033[0;0m\\]"
  PS1="$clear[ \W$green\$(fp_git_branch)$clear ]$ "
}

set_flexible_prompt
