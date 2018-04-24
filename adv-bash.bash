export BUILDKITE_PLUGIN_SMART_CI_MOUNTS_1=sdfsdf:dsf
export BUILDKITE_PLUGIN_SMART_CI_MOUNTS_2=sdfddfsdf:dsf
env | grep BUILDKITE
echo '1'
args=(
    "sdfdsf"
)
while IFS='=' read -r name _ ; do
  if [[ $name =~ ^(BUILDKITE_PLUGIN_SMART_CI_MOUNTS_[0-9]+) ]] ; then
    args+=( "--volume" "${!name}" )
  fi
done < <(env | sort)
echo '2'
for i in "${args[@]}"
do
   echo "$i"
   # or do whatever with individual element of the array
done
