function remake-branch
	set -l current_branch (git-branch)
echo -n 'Are you sure you want to remake '(echo $current_branch)' (y/n)?'
read answer
  if echo "$answer" | grep -iq "^y" ;and echo $branch
checkout $argv
and git branch -D $current_branch
and git checkout -b $current_branch
end
end
