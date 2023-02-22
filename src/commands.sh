#!/bin/bash
npm install -g create-react-app
create-react-app my-app
cd my-app
git init
git add .
git commit -m "Initial commit"
gh repo create my-app --public
git checkout -b update_logo
// Replace the existing logo with the new one
// Replace the existing link with the new one
git add .
git commit -m "Updated logo and link"
git push --set-upstream origin update_logo
gh pr create --title "Updated logo and link" --body "This PR updates the logo and link" --base master --head update_logo
gh pr merge <PR_NUMBER> --merge
