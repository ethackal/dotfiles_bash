function set_flexible_prompt {
  __FLEXIBLE_PROMPT__="true"
  PS1="$PS1_PREFIX[ $PS1_PWD_PREFIX\W$PS1_PWD_POSTFIX ]$PS1_POSTFIX$ "
}

set_flexible_prompt
