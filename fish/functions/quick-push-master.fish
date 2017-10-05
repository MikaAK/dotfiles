function quick-push-master
	set -l branch $argv
set -l current_branch (branch)

if echo $branch ;and echo $current_branch 
git checkout -b $branch
and git checkout $current_branch
and reset-branch 
and git checkout $branch
and reset-rebase-push-merge $current_branch
and git checkout $current_branch 
and git branch -D $branch
else
  echo "Not on a branch or didn't supply a rename branch"
end
end
