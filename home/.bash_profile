#apply local bash_profile fragments
if [ -d ~/.bash_profile_local ]
then
  for local_file in `find ~/.bash_profile_local`
  do
    [[ -f $local_file ]] && source $local_file
  done
elif [ -f ~/.bash_profile_local ]
then
  source ~/.bash_profile_local
fi

#apply bashrc if it exists
[[ -f ~/.bashrc ]] && source ~/.bashrc

