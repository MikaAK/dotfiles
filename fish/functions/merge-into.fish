function merge-into
	set -l branch (git symbolic-ref --short -q HEAD)

  if count $branch > /dev/null
    git pull origin $argv --no-ff
    and git checkout $argv
    and git pull origin $argv
    and git merge $branch --no-ff
    and git checkout $branch
  end
end
