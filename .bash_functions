function murder() {
  PORT="$1"
  sudo kill $(ports | grep $PORT | head -1 | awk '{print $2'})
}

function prompt_rvm {
  rbv=`rvm-prompt`
  rbv="(${rbv#ruby-})"
  [[ $rbv == *"@"* ]] || rbv=""
  if [[ $rbv == *"@"* ]]; then
      echo "$rbv "
  else
      echo $rbv
  fi
}
