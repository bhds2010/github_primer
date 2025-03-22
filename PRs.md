# PRs using CLI

Once CLI is mastered GUI becomes a little more intuitive.

It is cool to have the command line (CLI) for github but in case you do NOT that is fine.

## An update to PRs in Github

It is cool to have the command line (CLI) for github but in case you do NOT that is fine.

```bash
#check on the status of the local branch (REMOTE means it has a remote branch and we know this because of the name changes)

#check the status of the local branch to ensure it is in sync with the remote branch
#by the way it turns out in Rstudio that switches branches triggers checkout in the CLI
git status

#check for any PRS
gh pr list #no open PRs

#if I want to merge 2 or branches then a pull request has to be setup
#for this to work all commits must be up to date
#also commits and pushes can be made after a PR has been initiated
#You can check in the browser 
#this is created from docu_review
gh pr create -B summary-statistics #summary-statistics is just an example

#initiate the merge with binary files changed
#initiated in docu_review
git checkout docu_review #already checked out
git merge summary-statistics #immediately conflicts arise 

#the key stage here is how to fix conflicts in binary vs .txt files
git checkout --theirs Github_Collaboration.Rmd Github_Collaboration.nb.html Github_Collaboration.pdf

#add modified files or accepted changes
git add README.md Github_Collaboration.Rmd Github_Collaboration.nb.html Github_Collaboration.pdf

#commit to merge
git commit -m "Resolved merge conflicts in README.md, Github_Collaboration.pdf, Github_Collaboration.nb.html, and Github_Collaboration.Rmd"
```