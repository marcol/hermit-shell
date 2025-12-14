# Configuration for Git

## Alias

### Common

- `co`: checkout
- `rb`: rebase
- `st`: status
- `up`: pull with rebase and prune, then show log of pulled commits

### Diff

- `dci`: diff of unpushed commits
- `df`: diff
- `dh`: show the diff between the latest commit and the current state
- `dlast`: diff last committed

### Commit

- `amend`: amend your last commit
- `ca`: add all changes and commit with verbose output
- `ci`: commit
- `solve`: launch mergetool with vimdiff
- `uncommit`: go back before last commit, with files in uncommitted state
- `unstage`: unstage all staged files

### Push

- `ps`: push
- `undopush`: git push -f origin HEAD^:master

### Branches

- `bc`: create brtanch locally and set upstream to origin
- `bd`: delete branch locally and remotely
- `br`: branch
- `branches`: list all branches

### Contribution

- `contributors`: list contributors with number of commits
- `hist`: Show history log
- `l`: abbreviated SHA, description, and history graph of the latest 20 commits
- `lg`: pretty log`
- `mine`: show commits made by the current user
- `rank`: displays committers in descending order of number of commits

### Tags

### Other

- `cleanup`: clean untracked files and directories
- `fm`: find commits by commit message
- `g`: grep
- `remotes`: list all remotes
- `snapshot`: stashes changes with a timestamped message and applies it immediately
- `snapshots`: lists all stashes with their messages
- `tags`: list all tags
- `track`: set remote upstream

## Extra

Extra configurations can be added in the `~/.gitconfig-extra` file. Personal information such as user name and email can be set there to avoid committing them to the repository. This file is included at the end of the main gitconfig file if it exists.
