function reset-branch
	set -l branch (git symbolic-ref --short -q HEAD)
  echo -n 'Are you sure you want to reset '(echo $branch)' (y/n)?'
read answer
  if echo "$answer" | grep -iq "^y" ;and echo $branch  
    git fetch origin $branch ;and git reset --hard origin/$branch
    echo (echo $branch) has been reset.
  end
end
