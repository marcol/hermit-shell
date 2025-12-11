# Configuration for Git

## Alias

### Common

- `st`: status
- `ci`: commit
- `rb`: rebase
- `ps`: push
- `df`: diff

### Branches

- `br`: branch
- `co`: checkout
- `bc`: create brtanch locally and set upstream to origin
- `bd`: delete branch locally and remotely
- `up`: pull with rebase and prune, then show log of pulled commits

### Other

- `mine`: Show commits made by the current user
- `snapshot`: Stashes changes with a timestamped message and applies it immediately
- `snapshots`: Lists all stashes with their messages

## Extra

Extra configurations can be added in the `~/.gitconfig-extra` file. Personal information such as user name and email can be set there to avoid committing them to the repository. This file is included at the end of the main gitconfig file if it exists.
