# hermit-shell

Shell configuration.

## Instalation

1. Clone the repository on your home directory, i.e. `cd ~`:

```bash
git clone https://github.com/marcol/hermit-shell.git
```

1. Run the instalation script install.sh, located in the repository root (`~/hermit-shell/install.sh`):

```bash
./install.sh
```

1. Choose the desired shell. Zsh: `chsh -s $(which zsh)`, Fish: `chsh -s "$(command -v fish)"`.

### Homebrew items

There are a few packages installed through homebrew (check `install.sh`):

- pygments
- starship
- neovim
- font-fira-code-nerd-font

### NVChad

You can install NeoVim (i.e. `brew install neovim`) and [NVChad](https://nvchad.com/docs/quickstart/install).

### Colorsls

Colorls is used for colorized `ls` output. You can install it via gem: `gem install colorls`. You may also want to install the [Nerd Fonts](https://www.nerdfonts.com/) version of your preferred font to properly display icons.

## Documentation

- [Bash configuration](docs/bash.md)
- [Zsh configuration](docs/zsh.md)
- [Fish](docs/fish.md)
- [EditorConfig configuration](docs/editorconfig.md)
- [Git configuration](docs/git.md)
- [Starship configuration](docs/starship.md)

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
Added atheme for testing
