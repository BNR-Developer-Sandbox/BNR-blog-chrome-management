#!/bin/sh

WORKING_ON=$1; # get directory path from first command line argument

echo "Working on... ${WORKING_ON}";
echo "Use ^C to close your browser session.";
echo "Re-run this command to restore this session.";
echo "Use ^Z to suspend your browser session.";
echo "Run 'jobs' to list your background jobs.";
echo "Run 'fg' or 'fg %[JOB_SPEC]' to restore a suspended browser session.";

# Create or Restore a Chrome session based on what you are working on
# Redirect Chrome output to work.log
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --restore-last-session --user-data-dir="./${WORKING_ON}" \
  2>> work.log;

echo "\n";
echo "Closing... ${WORKING_ON}";

exit 0;
