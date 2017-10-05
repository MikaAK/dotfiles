function push-merge-into
	set -l branch (git-branch)

  merge-into $argv
  and git checkout $argv
  and git push origin $argv
  and git checkout $branch
end
