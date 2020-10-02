#!/usr/bin/env bash
#exit when a command fails (use "|| true" to allow a command to fail)
set -o errexit
# exit when a pipe fails
set -o pipefail
#disallow undeclared variables
set -o nounset
#disallow clobbering (overwriting) of files
#set -o noclobber
#print exactly what gets executed (useful for debugging)
#set -o xtrace

VERSION="1.1"

#default error message if bad usage
usageError() {
  local self=`basename "$0"`
  echo "Invalid usage: $1" 1>&2
  echo ""
  echo "Run 'bash $self -h' for help"
}

#fetch and check options provided by user
#flags for required options, checked after getopts loop
i_flag=0
while getopts ":hi:d:t:vo:" opt; do
case ${opt} in
  h )
    echo "Super awesome BASH script for the PhD course: Tools for Scientific Software Development and Data Science (fall 2020)"
    echo "Version: $VERSION"
    echo "Options:"
    echo "  -i    A single input JSON data file"
    echo "  -h    Display this help text and exit."
    echo "  -v    Print version and exit."
    exit 0
    ;;
  i )
    input=$OPTARG
    i_flag=1
    ;;
  v )
    echo "Version: $VERSION"
    exit 0
    ;;
  \? )
    usageError "Invalid Option: -$OPTARG"
    exit 1
    ;;
  : )
    usageError "Option -$OPTARG requires an argument"
    exit 1
    ;;
esac
done
shift $((OPTIND -1)) #reset option pointer

#check all required options
if [ $i_flag -eq 0 ]
then
	usageError "option -i is required"
	exit 1
fi

#function to add timestamps to progress messages
echoWithTS() {
  #check user arguments
  if [ ! $# -eq 1 ]
  then
    echo "Error: function must be passed exactly 1 argument" >&2
    exit 1
  fi
  echo " *** [$(date '+%Y-%m-%d %H:%M:%S')] script message: $1"
}

##### START OF ACTUAL SCRIPT #####
echoWithTS "Running super awesome BASH script"
echoWithTS "Version: $VERSION"
echoWithTS "Input: $input"

#extract basename of input file (without extension)
filename=$(basename -- "$input")
basename="${filename%.*}"

echoWithTS "Extracting id's..."
python print_kpthesaurus.py "$input" > ${basename}.csv

echoWithTS "Generating distribution plot..."
Rscript --vanilla analyse_and_visualize.R ${basename}.csv
##### END OF ACTUAL SCRIPT #####

#print elapsed time since script was invoked
duration=$(printf '%02dh:%02dm:%02ds\n' $(($SECONDS/3600)) $(($SECONDS%3600/60)) $(($SECONDS%60)))
echoWithTS "Done in: $duration!"
exit 0