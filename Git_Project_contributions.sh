#Change git editor to vim
Set the GIT_EDITOR environment variable: export GIT_EDITOR=vim

1. Fork a repository from a "upstream" repository. Forked repository is known as "origin"

2. Clone "origin" repository on laptop. This cloned repository is known as "local"
$ git clone git@github.com:<user>/<example>.git

3. Change to "local" repository's directory
$ cd <example>

4. Set Address for the "upstream" remote
$ git remote add upstream git@github.com:<maintainer>/<example>.git

5. Update "local" master (i.e. Pull in "upstream" changes)
$ git checkout master
$ git fetch upstream
$ git merge upstream/master
$ git push origin master

6. Development Work: Make changes
$ git checkout -b <branch>
$ git add <file-a> <file-b> ... <file-n>
$ git commit -m "Updated files"
$ git push origin <branch>

7. If "upstream" master moves ahead while code in <feature> branch is being developed
# Update <feature> branch: First make sure to commit code changes to <feature> branch
$ git checkout <feature>
$ git add <changed files> # Then `git stash` if needed
$ git commit -m "<message>"
# Now switch to master branch
$ git checkout master
$ git fetch upstream
$ git merge upstream/master
$ git push origin master
# Now switch to <feature> branch
$ git checkout <feature>
$ git merge master # Resolve conflicts
$ git push origin <feature>

8. Squash commits into one (Interactive Rebase)
$ git log --oneline origin/master..<feature> # List the commits on <branch> that has been made since the last commit on origin/master
> 6c34529 Second commit with a fix
> 889f452 First commit
$ git rebase -i origin/master # Ascending order
pick 889f452 First commit # Leave this alone
squash Second commit with a fix
$ git log --oneline origin/master..<feature>
$ git push -f origin <feature> # Force push

# Delete Local Branch
$ git branch -d <feature>

# Delete Remote Branch
$ git push origin --delete <feature>

# Decorated git lot
$ git log --oneline --decorate
$ git log --numstat --decorate
