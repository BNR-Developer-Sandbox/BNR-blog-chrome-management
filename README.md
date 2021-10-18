# BNR-blog-chrome-management

Browser workflow to start, save, and restore multiple chrome browser sessions

## Getting Started

This repository includes a single shell scripted called `work-on.sh`.
Execute the script with a unique project name.
e.g.

```
./work-on.sh My-New-Project
```

`work-on.sh` will open Google Chrome.
Google Chrome will create a directory using your unique project name to store session data.
If the directory already exists, then your session will be restored.

See [work-on.sh](./work-on.sh) script for implementation.

To learn more read the corresponding blog post on [How I finally closed my browser windows](https://bignerdranch.com/resources/blog/TODO-INSERT-BLOG-POST-URL) [Blog Pull Request](https://github.com/bignerdranch/blogposts/pull/452/files).
