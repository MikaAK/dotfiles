function oni
  set -l OS_NAME (uname)

  if [ $OS_NAME = 'Darwin' ]
    set OS 'Mac'
    set ONI_DIR '/Applications/Oni.app/Contents/MacOS/Oni'
  else
    # TODO: Support Linux
    set OS (uname -a)
    echo "Your platform ($OS) is not supported."
    return 1
  end

  set -x ONI_CWD (pwd)
  open --new -a "$ONI_DIR" --args $argv
end

