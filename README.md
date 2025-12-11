# hermit-shell

Shell configuration.

## TO DO

- [x] Bash support.
- [ ] Zsh support.
- [ ] Fish support.
- [ ] NeoVim config. https://nvchad.com
- [ ] Tmux config.
- [ ] Git config.
- [ ] starship.
- [ ] brewrc
- [ ] Vim
- [x] Installation script
- [x] EditorConfig.

## Instalation

1. Clone the repository on your home directory, i.e. `cd ~`:

```bash
 git clone https://github.com/marcol/hermit-shell.git
```

1. Run the instalation script install.sh, located in the repository root (`~/hermit-shell/install.sh`):

```bash
  sh install.sh
```

## Documentation

### Bash

#### Alias

- `..`: Change directory to parent
- `cd..`: Change directory to parent
- `...`: Change directory to grandparent
- `....`: Change directory to great-grandparent
- `~`: Change directory to home
- `--`: Change directory to previous
- `reload`: Reload shell configuration
- `ll`: List files in long format with human-readable sizes
- `la`: List all files including hidden files
- `lsd`: List directories with colorized output
- `grep`: Search for a pattern in files with colorized output

#### Functions

- `gitexport`: Export git repository to a specified directory
- `mkd`: Create a directory and change into it
- `f`: find shorthand
- `escape`: Escape special characters in a string

#### Extras

Extra configurations can be added in the `~/.extra` file. This file is sourced at the end of the `bashrc` file if it exists and is readable.

### EditorConfig

Helps with consistency of coding styles between different editors and IDEs. See [EditorConfig](https://editorconfig.org/) for more details.

## Development

### Scripts

- `yarn lint:md`: Lint markdown files.

### Commit Messages

Follow the conventions of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) leveraging [commitlint](https://commitlint.js.org).

```bash
type(scope?): subject
```

Scope is optional; multiple scopes are supported (current delimiter options: "/", "\" and ",").

Common types: `build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`. The full set of rules can be found in [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/@commitlint/config-conventional#rules).

### Tools

- [remark-cli](https://www.npmjs.com/package/remark-cli)
- [remark-preset-lint-recommended](https://www.npmjs.com/package/remark-preset-lint-recommended)
- [commitlint](https://www.npmjs.com/package/@commitlint/cli)
- [lefthook](https://www.npmjs.com/package/lefthook)
