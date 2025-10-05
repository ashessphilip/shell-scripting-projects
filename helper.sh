check_args() {
  local expected_args=$1
  local actual_args=$# # $# inside a function refers to the function's arguments

  if [[ "$actual_args" -ne "$expected_args" ]]; then
    echo "Error: This script requires exactly $expected_args arguments."
    echo "Usage: $0 arg1 arg2 ..." # $0 refers to the script name
    exit 1
  fi
}

# Call the helper function to check for 2 arguments
#check_args 2 "$@" # Pass the expected count and all script arguments
