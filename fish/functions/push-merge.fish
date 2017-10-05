function push-merge
	set -l branch (git symbolic-ref --short -q HEAD)

  if echo $branch 
    git checkout $argv 
    and git merge $branch 
    and git push origin $argv 
    and git checkout $branch
    echo 'Finished merging and pushing'
  else
    echo 'Not on a branch'
  end
end
