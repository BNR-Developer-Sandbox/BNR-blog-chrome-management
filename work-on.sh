#!/bin/sh

WORKING_ON=$1; # get directory name from first command line argument

# Create working directory and error log if needed
mkdir -p ${WORKING_ON};
touch ${WORKING_ON}/error.log;

echo "Working on... ${WORKING_ON}";
echo "Google Chrome error log at ./${WORKING_ON}/error.log";
echo "Use ^C to close your browser session.";

# Create or Restore a Google Chrome session based on what you are working on
# Redirect Google Chrome output errors to error.log
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --user-data-dir="./${WORKING_ON}" --restore-last-session \
  2>> ./${WORKING_ON}/error.log;

GOOGLE_CHROME_EXIT=$?; # capture Google Chrome exit code

echo;

if [ $GOOGLE_CHROME_EXIT -eq 0 ]
then
  echo "Google Chrome Session saved: ${WORKING_ON}";
else
  echo "Google Chrome exited with error code: ${GOOGLE_CHROME_EXIT}.";
  echo "See ./${WORKING_ON}/error.log for error details.";
fi

echo "Run rm -r ./${WORKING_ON} to permanently delete this session."
echo "Re-run ./work-on.sh ${WORKING_ON} to restore this session.";

exit $GOOGLE_CHROME_EXIT;
