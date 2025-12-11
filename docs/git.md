# Configuration for Git

## Alias

### Common

- `rb`: rebase
- `up`: pull with rebase and prune, then show log of pulled commits

### Diff, staging and committing

- `st`: status
- `df`: diff
- `dh`: show the diff between the latest commit and the current state
- `dci`: diff of unpushed commits
- `dlast`: diff last committed
- `solve`: launch mergetool with vimdiff
- `uncommit`: go back before last commit, with files in uncommitted state
- `ci`: commit
- `ca`: add all changes and commit with verbose output
- `amend`: amend your last commit
- `ps`: push
- `undopush`: git push -f origin HEAD^:master

### Branches

- `br`: branch
- `co`: checkout
- `bc`: create brtanch locally and set upstream to origin
- `bd`: delete branch locally and remotely
- `branches`: list all branches

### Other

- `snapshot`: stashes changes with a timestamped message and applies it immediately
- `snapshots`: lists all stashes with their messages
- `tags`: list all tags
- `remotes`: list all remotes
- `track`: set remote upstream
- `cleanup`: clean untracked files and directories
- `lg`: pretty log`
- `hist`: Show history log
- `g`: grep
- `mine`: show commits made by the current user
- `rank`: displays committers in descending order of number of commits

## Extra

Extra configurations can be added in the `~/.gitconfig-extra` file. Personal information such as user name and email can be set there to avoid committing them to the repository. This file is included at the end of the main gitconfig file if it exists.
