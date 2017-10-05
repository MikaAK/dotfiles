function mass-rename --description 'Mass rename files [glob] [regex] [replace]'
	for file in $argv[1..-3]
    mv $file (eval echo $file | string replace $argv[-2] $argv[-1])
  end
end
