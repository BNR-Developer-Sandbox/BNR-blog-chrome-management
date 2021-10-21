#!/bin/sh

WORKING_ON=$1; # get directory name from first command line argument

# Create working directory and error log if needed
mkdir -p ${WORKING_ON};
touch ${WORKING_ON}/error.log;

echo "Working on... ${WORKING_ON}";
echo "Chrome error log at ./${WORKING_ON}/error.log";
echo "Use ^C to close your browser session.";

# Create or Restore a Chrome session based on what you are working on
# Redirect Chrome output errors to error.log
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --user-data-dir="./${WORKING_ON}" --restore-last-session \
  2>> ./${WORKING_ON}/error.log;

CHROME_EXIT=$?; # capture chrome exit code

echo;

if [ $CHROME_EXIT -eq 0 ]
then
  echo "Session saved: ${WORKING_ON}";
else
  echo "Chrome exited with error code: ${CHROME_EXIT}. See ./${WORKING_ON}/error.log for error details.";
fi

echo "Re-run ./work-on.sh ${WORKING_ON} to restore this session.";

exit $CHROME_EXIT;
