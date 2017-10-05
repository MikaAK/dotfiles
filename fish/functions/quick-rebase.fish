function quick-rebase
	git stash
and rebase $argv
and git stash apply
end
