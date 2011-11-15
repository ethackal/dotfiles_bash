PS1="[\t][ \W ]$ "
export LSCOLORS="gxfxbHdxbxegedabagacad"
export CLICOLORS=42

for alias_file in `find ~/.bash/aliases`
do
  [[ -f $alias_file ]] && source $alias_file
done

for export_file in `find ~/.bash/exports`
do
  [[ -f $export_file ]] && source $export_file
done

