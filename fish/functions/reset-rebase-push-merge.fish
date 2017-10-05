function reset-rebase-push-merge
	set -l branch (git symbolic-ref --short -q HEAD)
and git checkout -b $branch-mika
and git checkout $branch
and reset-branch
and git checkout $branch-mika
and rebase-push-merge $branch
and git checkout $branch
end
