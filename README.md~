# dotfiles

My personal configuration files, managed under version control, organized modularly, and symlinked into `$HOME`.

## Highlights

* **Modular Layout:** Configurations grouped by application (`zsh`, `git`, `tmux`, etc.).
* **Symlink Automation:** Zero-dependency installation script (`install.sh`) to link files safely.
* **Safe Overrides:** Support for unversioned `*.local` files for work environments and secrets.
* **Portability:** Shared configurations across macOS and Linux without divergent Git branches.

## Directory Structure

```text
~/.dotfiles/
├── bin/                  # Custom utility scripts (appended to $PATH)
├── git/
│   ├── .gitconfig        # Global Git settings & aliases
│   └── .gitignore_global # Universal Git ignore rules
├── zsh/
│   ├── .zshrc            # Interactive shell config & custom prompt
│   └── .zshenv           # Environment variables & XDG paths
├── tmux/
│   └── .tmux.conf        # Terminal multiplexer bindings & theme
├── nvim/
│   └── .config/nvim/     # Neovim configuration
├── install.sh            # Automated symlinking script
└── README.md
```

## Quickstart

### 1. Clone the Repository

Clone directly into `~/.dotfiles`:

```bash
git clone https://github.com/<your-username>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 2. Deploy Symlinks

Run the included installation script to back up any existing configurations and symlink the repository files into your home directory:

```bash
chmod +x install.sh
./install.sh
```

## Local & Machine-Specific Overrides

To prevent committing sensitive tokens, work credentials, or host-specific paths, use local override files. These are ignored by Git.

### Shell Overrides (`.zshrc.local`)

Add local keys or machine-specific aliases to `~/.zshrc.local`. The main `.zshrc` will load it automatically if present:

```bash
# ~/.zshrc.local
export GITHUB_TOKEN="ghp_xxxxxxxxxxxx"
export WORK_VPN="vpn.company.com"
```

### Git Overrides (`.gitconfig.local`)

Override user identity or signing keys in `~/.gitconfig.local`:

```ini
# ~/.gitconfig.local
[user]
    name = Your Name
    email = user@work-domain.com
    signingkey = YOUR_GPG_OR_SSH_KEY
```

## Prompt Details

The Zsh prompt (`PROMPT`) displays the user, host, current directory, and timestamp across two lines:

```zsh
PROMPT='%F{cyan}%n%f@%F{red}%m%f:%F{blue}%~%f - 
%F{yellow}%T%f %# '
```

* **Line 1:** `username@host:working_directory -`
* **Line 2:** `HH:MM:SS $ ` (switches to `# ` for root sessions)

## Maintenance

### Updating Across Machines

To sync updates made on another machine:

```bash
cd ~/.dotfiles
git pull origin main
./install.sh
```

### Adding a New Configuration

1. Create a directory for the tool: `mkdir -p ~/.dotfiles/<app>`
2. Move your config file into that directory.
3. Add the mapping to `install.sh` so it symlinks automatically.
4. Run `./install.sh` to link it.
5. Commit and push:

```bash
git add <app> install.sh
git commit -m "feat(<app>): add initial configuration"
git push origin main
```