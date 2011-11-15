PS1="[ \W ]$ "

export LSCOLORS="gxfxbHdxbxegedabagacad"
export CLICOLORS=42

#apply local bashrc fragments
if [ -d ~/.bashrc_local ]
then
  for local_file in `find ~/.bashrc_local`
  do
    [[ -f $local_file ]] && source $local_file
  done
elif [ -f ~/.bashrc_local ]
then
  source ~/.bashrc_local
fi
