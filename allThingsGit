BASIC COMMANDS
Git fetch = git pull + git merge (Brings your local branch up to date with the remote origin
git checkout -b local_name_you_give origin/name_of_remote branch  Pull a new branch. ex. git checkout -b hex_new origin/hex
git checkout <branch_name>: Switch branch

git log: Gives the log of the commits and their date
git status: Shows changes 

Resolving merge conflicts
<<<<<HEAD : Below this line are the changes from the base branch or HEAD branch

=====: This is the DIVIDER which clearly divides the changes between HEAD branch and cherry picked branch

CHERRY_PICKED_BRANCH: above this are the changes from the cherry picked branch

You can then do a git cherry-pick --continue once the conflicts are resolved.

Git cherry pick error: "deleted by us"

Deleted by us doesn't actually mean the file is deleted. It is actually the opposite. You did not have that file, but the cherry-pick contained changes to the file, so it will add the full file but will not "git add $thefile", hence deleted by us... meaning deleted from the merge so that you can verify it first... to add whole file.

Undoing the Last Commit
However, of course, there a tons of situations where you really want to undo that last commit. E.g. because you'd like to restructure it extensively - or even discard it altogether!
In these cases, the "reset" command is your best friend:
$ git reset --soft HEAD~1
Reset will rewind your current HEAD branch to the specified revision. In our example above, we'd like to return to the one before the current revision - effectively making our last commit undone.
Note the --soft flag: this makes sure that the changes in undone revisions are preserved. After running the command, you'll find the changes as uncommitted local modifications in your working copy.
If you don't want to keep these changes, simply use the --hard flag. Be sure to only do this when you're sure you don't need these changes anymore.
$ git reset --hard HEAD~1
Backing up a Patch Set
Checkout a temp branch: 
git checkout -b temp origin/ndsqp_dev
  2. Cherry the patch set pick on the branch temp

Deleting a File
Git rm summary
git rm is a command that operates on two of the primary Git internal state management trees: the working directory, and staging index. git rm is used to remove a file from a Git repository. It is a convenience method that combines the effect of the default shell rm command with git add. This means that it will first remove a target from the filesystem and then add that removal event to the staging index. The command is one of many that can be used for undoing changes in Git.

Once done git rm, do git commit ––amend and a push by git push origin HEAD:refs/for/branch_name

TO PREVENT A MESS ON A PUSH:
DON'T push the Head as it will push everything till the Head
Reverse the order of commits in the commit file 
Don't push on the head but the commit id
git push origin <commit_id>:refs/for/branch_name

## Delete a remote branch
$ git push origin --delete <branch> # Git version 1.7.0 or newer 
$ git push origin :<branch> # Git versions older than 1.7.0

## Delete a local branch
$ git branch --delete <branch>
$ git branch -d <branch> # Shorter version
$ git branch -D <branch> # Force delete un-merged branches

## Delete a local remote-tracking branch
$ git branch --delete --remotes <remote>/<branch>
$ git branch -dr <remote>/<branch> # Shorter
$ git fetch <remote> --prune # Delete multiple obsolete tracking branches
$ git fetch <remote> -p # Shorter
