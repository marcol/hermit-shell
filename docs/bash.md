# Configuration for Bash

## Alias

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

## Functions

- `gitexport`: Export git repository to a specified directory
- `mkd`: Create a directory and change into it
- `f`: find shorthand
- `escape`: Escape special characters in a string

## Extras

Extra configurations can be added in the `~/.extra` file. This file is sourced at the end of the `bashrc` file if it exists and is readable.
