function rebase
	set -l branch (git symbolic-ref --short -q HEAD)

  if echo $branch 
    git checkout $argv
    and git pull origin $argv
    and git checkout (echo $branch) 
    and git rebase -i $argv 
  else
    echo 'Not on a branch'
  end
end
