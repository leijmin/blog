#!/bin/bash

project_path="/Users/leijianmin/Desktop/博客/github"
cd $project_path

# Add and commit changes
git add .
git commit -m "Auto commit on $(date)"

# Pull and handle possible merge conflicts
git pull --rebase || exit 1

# Push changes
git push || exit 1

# Check status
git status
