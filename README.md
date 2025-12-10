# hermit-shell

Shell configuration.

## TO DO

- [ ] Bash support.
- [ ] Zsh support.
- [ ] Fish support.
- [ ] NeoVim config. https://nvchad.com
- [ ] Tmux config.
- [ ] Git config.
- [ ] starship.
- [ ] EditorConfig.

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

## Development

### Scripts

- `npm run lint:md`: Lint markdown files.

### Commit Messages

Follow the conventions of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) leveraging [commitlint](https://commitlint.js.org).

```
type(scope?): subject
```

Scope is optional; multiple scopes are supported (current delimiter options: "/", "\" and ",").

Common types: `build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`. The full set of rules can be found in [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/@commitlint/config-conventional#rules).

### Tools

- [remark-cli](https://www.npmjs.com/package/remark-cli)
- [remark-preset-lint-recommended](https://www.npmjs.com/package/remark-preset-lint-recommended)
- [commitlint](https://www.npmjs.com/package/@commitlint/cli)
- [lefthook](https://www.npmjs.com/package/lefthook)
