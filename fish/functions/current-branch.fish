function current-branch
	set -l branch (git symbolic-ref --short -q HEAD)

echo $branch
end
