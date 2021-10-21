# How I finally closed my Google Chrome browser windows on my Mac

Google Chrome browser workflow to start, save, and restore multiple chrome browser sessions.

See [work-on.sh](./work-on.sh) script for implementation.

To learn more read the corresponding blog post on [How I finally closed my browser windows](https://bignerdranch.com/resources/blog/TODO-INSERT-BLOG-POST-URL) [Blog Pull Request](https://github.com/bignerdranch/blogposts/pull/452/files).

## Installation

In your terminal, clone this git repository in the directory where you'd like to save your browser sessions and specify the directory name you'd like to use.
e.g.

```shell
git clone git@github.com:BNR-Developer-Sandbox/BNR-blog-chrome-management.git Browsers
```

Next, change into the `Browsers` directory.

```shell
cd Browsers/
```

From here you will execute the `work-on-sh` script.

## Getting Started

This repository includes a single shell scripted called `work-on.sh`.
Execute the script with a unique project name.
e.g.

```shell
./work-on.sh My-New-Project
```

`work-on.sh` will create a directory for Google Chrome session data, create an `error.log` for Google Chrome error output, and open Google Chrome.
If the directory already exists and contains session data, then your session will be restored.

## Error logs

Google Chrome error output is redirected to `error.log` for each browser session.
e.g. 

```shell
tail ./My-New-Project/error.log
```

## Remove a Saved Session

To permanently remove a saved session just recursively delete the project directory.
e.g.

```shell
rm -r ./My-New-Project
```
