#!/bin/bash

# Define the branch to push
BRANCH="main"

# Prompt for commit message
read -p "Enter your commit message: " COMMIT_MESSAGE

# Get today's date in the format YYYY-MM-DD
TODAYS_DATE=$(date +%Y-%m-%d)

# Append today's date to the commit message
FULL_COMMIT_MESSAGE="$COMMIT_MESSAGE ($TODAYS_DATE)"

# Add all changes to the staging area
git add .

# Commit changes with the full message
git commit -m "$FULL_COMMIT_MESSAGE"

# Push changes to the origin
git push origin "$BRANCH"

echo "Changes pushed to origin/$BRANCH with commit message: '$FULL_COMMIT_MESSAGE'"