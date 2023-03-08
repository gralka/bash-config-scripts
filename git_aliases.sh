#!/bin/bash

# Define Git aliases

set_git_alias() {
  alias_name=$1
  alias_command=$2
  alias_value=$(git config --get alias."$alias_name")
  if [[ -z $alias_value ]]; then
    echo "Setting git alias $alias_name to $alias_command."
    git config --global "alias.$alias_name" "$alias_command"
  fi
}

