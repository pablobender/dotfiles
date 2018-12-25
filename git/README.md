# Yadr (Yet Another Dotfile Repo)

## Git Customizations:

YADR will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`

It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.

* Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
* Slightly improved colors for diff

### Log

* `git l` or `gl` - a much more usable git log
* `git ll` - a much more usable git log (all branches)
* `git tree` - a *compact* and much more usable git log (all branches)
* `changes` - log with changed files
* `short` - compact log
* `shortnocolor` - compact log wihtout colors
* `git simple` - a clean format for creating changelogs

### Commit

* `c` - commit with message (commit -m)
* `ca` - commit all with message (commit -am)
* `ci` - commit
* `amend` - ammend your last commit (commit --amend)
* `ammend` - ammend your last commit (commit --amend)

### Branches/Tags

* `git b` or `gb` - a list of branches with summary of last commit
* `git r` - a list of remotes with info
* `git t` or `gt` - a list of tags with info
* `git nb` or `gnb` - a (n)ew (b)ranch - like checkout -b
* `git recent-branches` - if you forgot what you've been working on
* `gdmb` (g)it (d)elete (m)erged (b)ranches - Deletes all branches already merged on current branch
* `t` - show tags with <n> lines of each tag message

### Push/Pull/Fetch

* `pl` - pull
* `plr` - pull --rebase
* `ps` - push
* `fp` - fetch --prune

### Checkout

* `co` - checkout
* `nb` - create and switch to a new branch (mnemonic: "git new branch branchname..." / checkout -b)

### Stash

* `ss` - stash changes
* `sl` - list stashes
* `sa` - apply stash (restore changes)
* `sd` - drop stashes (destory changes)
* `snapshot` - Take a snapshot of your current working tree without removing the changes from your tree. This is handy for refactoring where you can’t quite fit what you’ve done into a commit but daren’t stray too far from now without a backup. <http://blog.apiaxle.com/post/handy-git-tips-to-stop-you-getting-fired/>
* `snapshots` - List created snapshots

### Cherry Pick

* `git cp` or `gcp` - cherry-pick -x (showing what was cherrypicked)

### Diff

* `d` - diff unstaged changes
* `dc` - diff staged changes
* `last` - diff last committed change

### Rebase

* `rc` - rebase --continue
* `rs` - rebase --skip

### Reset

* `git unstage` / `guns` (remove from index) and `git uncommit` / `gunc` (revert to the time prior to the last commit - dangerous if already pushed) aliases
* `uncommit` - go back before last commit, with files in uncommitted state
* `filelog` - show changes to a file
* `mt` - fire up the merge tool

### Status

* `s` - status
* `st` - short status (status -s)
* `stat` - status

### SVN helpers

* `svnr` - svn rebase
* `svnd` - svn dcommit
* `svnl` - svn log --oneline --show-commit
