# Setup
You need to install `bundler` (a ruby gem).
After that, to install all dependencies, you need to run `bundle install`.

# Serving HTML pages
`bundle exec jekyll serve --future`

You can find written tasks at their respective URL.
If you have a task in `_tasks/2017-07-19-cat.md`, it will be available at
`http://127.0.0.1:4000/tasks/2017/07/19/cat`.

# Setup with docker
Just run the following command from the markdown folder:
`docker run -p 4000:4000 --rm --volume=$PWD:/srv/jekyll -it jekyll/minimal:3.5.0 bundle exec jekyll serve --host 0.0.0.0 --future`

NOTE: This will change the ownership of all files in the markdown folder to 1000:1000.

# Writing new tasks
Create a file in `_tasks/`, with a name, prefixed by the date (e.g.
`2017-07-19-cat.md`).
You need to have a YAML front matter at the top of the file with the following
two keys: `cmdline` and `title`. Example:
```
---
problem_type: directory
cmdline: "cat"
title:   "Задача №1: Реализация на cat"
---
```
After the front matter, you can just write markdown :).
