#! /usr/bin/env bash

pwd

exit 1

echo "Excluded PATHS in DTT_DOCS_EXCLUDED_PATH are \"$DTT_DOCS_EXCLUDED_PATH\""
if [ -n "$DTT_DOCS_EXCLUDED_PATH" ] && [ "$PROJECT_NAME" == "DTT-Docs-staging" ]; then
    echo -ne "\033[31;1;7m"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@                                                                @@"
    echo "@@ Use of DTT_DOCS_EXCLUDED_PATH should be reserved to production @@"
    echo "@@                                                                @@"
    echo "@@ >>>>>>>>> Make sure you are not doing something wrong <<<<<<<< @@"
    echo "@@                                                                @@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo -ne "\033[0m"
fi
for excluded_path in ${DTT_DOCS_EXCLUDED_PATH/:/ }; do
  echo "Removing \"docs/${excluded_path}\" from current build"
done
