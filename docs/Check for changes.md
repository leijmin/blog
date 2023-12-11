#自动提交发布脚本    

```
#!/bin/bash

project_path="/Users/leijianmin/Desktop/博客/github"
cd $project_path

# Check for changes
if git diff --quiet; then
  echo "No changes to commit"
  exit 0
fi

# Add and commit changes
git add .
git commit -m "Auto commit on $(date)"

# Pull and handle possible merge conflicts
git pull --rebase || exit 1

# Push changes
git push || exit 1

# Check status
git status
```

快来伤害吧！