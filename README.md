# hermit-shell

Shell configuration.

## TO DO

- [ ] Zsh support.
- [ ] Fish support.
- [ ] NeoVim config. https://nvchad.com
- [ ] starship.
- [ ] brewrc
- [ ] Vim
- [x] Git config.
- [x] Bash support.
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

- [Bash Configuration](docs/bash.md)
- [EditorConfig](docs/editorconfig.md)
- [Git Configuration](docs/git.md)

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
