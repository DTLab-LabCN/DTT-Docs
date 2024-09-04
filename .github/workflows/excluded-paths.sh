#! /usr/bin/env bash
set -e

# Note: actions always run at the root of the repository


if [ "$DTT_DOCS_EXCLUDED_PATH" != "" ]; then
  echo "Excluded PATHS in DTT_DOCS_EXCLUDED_PATH are \"$DTT_DOCS_EXCLUDED_PATH\""
  if [ "$PROJECT_NAME" == "DTT-Docs-staging" ]; then
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@                                                                @@"
    echo "@@ Use of DTT_DOCS_EXCLUDED_PATH should be reserved to production @@"
    echo "@@                                                                @@"
    echo "@@ >>>>>>>>> Make sure you are not doing something wrong <<<<<<<< @@"
    echo "@@                                                                @@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  fi
else
  echo "No path are excluded from this build, DTT_DOCS_EXCLUDED_PATH is absent or empty"
fi

for excluded_path in ${DTT_DOCS_EXCLUDED_PATH//:/ }; do
  echo "Removing \"docs/${excluded_path}\" from current build"
  ( set -x; rm --recursive --force --verbose "docs/${excluded_path}" )
done
