## github_primer

Repo is for the bhds 2010 module 9 homework and is the precursor to what will be referenced for the group project due at the end of the course.

## Getting Started here

I advise these steps:

1. Open Rstudio (Top Right Side)

2. New Project > New Project Wizard

3. Version Control > Git

4. Enter Repo URL

5. Can ignore project directory name

6. Choose sub directory

## Check git housekeeping

Safe to see you can proceed if a git version is returned from the system call below.

```r
system("git --version")
```

## Using Rstudio for Git and Github configuration

With git installed. You need to set up credentials below otherwise it will throw an error.

For project collaborators there might be no need to set the token but if asked then use `gitcreds::gitcreds_set()` and provide the token when prompted. Please reach out to me for the token or perhaps attempt to set one up yourself.

```r
use_git_config(user.name = "****", user.email = "*****")
gitcreds::gitcreds_set() #if you need to setup the key
```

## Managing Secrets

The next sections show how to manage secrets at least in a semi-decent way. When setting gitcreds you might have to provide the token as plain text which is what i often do but also it will be good to simply get the secret from `Rprofile` or `Renviron` files and so the next sections break down ways to save secrets in R.

## Rprofile

Working with Rprofile

### Check if it exists

```r
site_path = R.home(component = "home")
fname = file.path(site_path, "etc", "Rprofile.site")
file.exists(fname)
```
### Make and edit the file

```r
Sys.getenv("HOME")
user_rprofile = path.expand(file.path("~", ".Rprofile")) #edit Rprofile global
file.edit(user_rprofile)
file.edit("~/.Rprofile") #edit Rprofile global
file.edit(".Rprofile") #edit Rprofile project
```

## Renviron

Working with Renviron

### Check if it exists

```r
site_path = R.home(component = "home")
fname = file.path(site_path, "etc", "Renviron.site")
file.exists(fname)
```
### Make and edit the file

```r
Sys.getenv("HOME")
user_renviron = path.expand(file.path("~", ".Renviron")) #edit Rprofile global
file.edit(user_renviron)
file.edit("~/.Renviron") #edit Rprofile global
file.edit(".Renviron") #edit Rprofile project
```

### Also usethis

```r
usethis::edit_r_environ()
```

## Setting environment variable

### Add secret

```r
Sys.setenv(BHDS2010_GITHUB_PRIMER_REPO_TOKEN = "*****")
Sys.unsetenv("BHDS2010_GITHUB_PRIMER_REPO_TOKEN")
```

### Retrieve secrets

```r
github_primer_key <- Sys.getenv('BHDS2010_GITHUB_PRIMER_REPO_TOKEN')
```

## Fixing Push Issues

This is a `terminal` command, not a `console` command.

```bash
git add .
git commit .
git push -f
```

## Fixing VIM Terminal issues

Some instances when the terminal is busy like when one attempts to use terminal for commiting in windows but VIM commands don't work well on windows and to stop git from tracking error processes, the `index.lock` file needs to be removed in order to give git a black slate.

```bash
rm -f .git/index.lock
```
## Reference

[Git Creds](https://gitcreds.r-lib.org/reference/gitcreds_get.html)

[Git and Github Config Rstudio](https://github.com/AlphaPrime7/git_config_linux/blob/master/gitR.Rmd)


