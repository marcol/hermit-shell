# hermit-shell

A collection of shell configurations and tools that enhance the development experience, particularly for AI-assisted coding workflows.

## Overview

This repository contains a comprehensive set of shell configurations, aliases, functions, and tools designed to streamline development tasks. It particularly emphasizes integration with AI services like Claude, Gemini, DeepSeek, and Ollama for enhanced productivity.

## Key Features

- **Enhanced Shell Experience**: Custom zsh configurations with helpful aliases and functions
- **AI Integration**: Tools for interacting with various AI platforms including Claude, Gemini, DeepSeek, and Ollama
- **Convenient Utilities**: Scripts and functions for common development tasks like directory navigation
- **Configuration Management**: Automated installation scripts for setting up your environment

## Repository Structure

```bash
.
├── src/
│   ├── agents/                    # AI agent configurations
│   │   └── skills/                # Various agent skills, including security-best-practices
│   ├── bashrc                     # Bash configuration (symlinked)
│   ├── config/                    # Configuration files for various tools
│   │   ├── colorls/               # Colorls configuration
│   │   ├── fish/                  # Fish shell configuration
│   │   ├── ghostty/               # Ghostty terminal configuration  
│   │   ├── nvim/                  # Neovim configuration
│   │   ├── opencode/              # Opencode configuration
│   │   ├── shell/                 # Shell configuration (aliases and functions)
│   │   └── tmux/                  # Tmux configuration
│   ├── inputrc                    # Readline configuration
│   ├── prettierrc                 # Prettier configuration
│   ├── zshrc                      # Zsh configuration
│   └── install.sh                 # Installation script
├── install.sh                     # Main installation script
├── LICENSE                        # License information
└── README.md                      # This file
```

## Installation

To install the hermit-shell configurations:

1. **Clone the repository**:
```bash
git clone https://github.com/marcodiaslopes/hermit-shell.git
cd hermit-shell
```

2. **Run the installation script**:
```bash
./install.sh
```

The installation script will:
- Create symbolic links for the configuration files
- Set up your shell environment with custom aliases and functions
- Create necessary directories

## Security Note

This repository uses environment variables to manage API keys for AI services (Claude, Gemini, DeepSeek, Ollama) instead of hardcoding credentials. You must set these environment variables before using the related tools:

```bash
export GEMINI_API_KEY=your_gemini_key
export DEEPSEEK_API_KEY=your_deepseek_key  
export OLLAMA_API_KEY=your_ollama_key
```

## Configuration Files

Key configuration files include:
- **`src/config/shell/alias.zsh`**: Shell aliases for common commands
- **`src/config/shell/functions.zsh`**: Custom shell functions including `cdds` and `watch`
- **`src/config/opencode/opencode.json`**: Opencode configuration with environment variable references

## Development Tools

The repository enhances developer workflows through tools such as:
- Directory navigation utilities (`cdds` function)
- Watch scripts for automatically running Python code on file changes
- Integration with various AI service providers

## AI Integration

The shell configurations include helpers for:

### Claude (claude -p command)
- `claude -p` with proper API key environment variable support
- Automatic cleanup of temporary files 

### Gemini, DeepSeek, Ollama
- Environment variable-based configuration for API access
- Consistent tooling patterns across platforms

## Contributing

Contributions are welcome! Please submit issues and pull requests to improve this collection of shell utilities.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.