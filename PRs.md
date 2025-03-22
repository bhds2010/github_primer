# PRs using CLI

Once CLI is mastered GUI becomes a little more intuitive.

It is cool to have the command line (CLI) for github but in case you do NOT that is fine.

## Auth CLI

```bash
gh auth login
```

## Kill Git

```bash
taskkill /F /IM git.exe

#linux
killall git
```

## View PR in web

```bash
gh pr view --web
```

## Commiting from CLI

```bash
git status
git add . #PRs.md
git commit -m "msg"
git push origin docu_review

#or in one line
git commit -a -m "msg"
```

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
gh pr create --fill #autofill

#view changes
gh pr view

#mark it as ready for review
gh pr ready

#review it
gh pr review

#initiate the merge with binary files changed
#initiated in docu_review
git checkout branch <docu_review> #already checked out
git merge branch <summary-statistics> #immediately conflicts arise 

#the key stage here is how to fix conflicts in binary vs .txt files
git checkout --theirs Github_Collaboration.Rmd Github_Collaboration.nb.html Github_Collaboration.pdf

#add modified files or accepted changes
git add README.md Github_Collaboration.Rmd Github_Collaboration.nb.html Github_Collaboration.pdf

#commit to merge
git commit -m "Resolved merge conflicts in README.md, Github_Collaboration.pdf, Github_Collaboration.nb.html, and Github_Collaboration.Rmd"

#push and resolve the PR from the CLI
git push origin docu_review

#finally try the merge again
git merge summary-statistics

#finally cloud merge
gh pr merge

#NOTES
#will figure this out
gh pr checkout 12 && git fetch origin docu_review && git rebase origin/docu_review

#fix conflicts like above and rebase
git rebase --continue
```

## Ancillary PR commands

```bash
#mark it as ready for review
gh pr ready

#view pr
gh pr view

#close pr
gh pr close

#reopen
gh pr reopen

#lock convo
gh pr lock
```

## References

[Github CLI Linux Install](https://github.com/cli/cli/blob/trunk/docs/install_linux.md)

[Github CLI installation](https://github.com/cli/cli#installation)

[Github CLI](https://cli.github.com/)

