# Claude Code Dotfiles

Skills et configuration portables pour [Claude Code](https://claude.com/claude-code).

## Installation

**Linux / macOS :**

```bash
git clone git@github.com:<user>/claude-dotfiles.git ~/claude-dotfiles
cd ~/claude-dotfiles
chmod +x install.sh
./install.sh
```

**Windows (PowerShell Administrateur) :**

```powershell
git clone git@github.com:<user>/claude-dotfiles.git $HOME\claude-dotfiles
cd $HOME\claude-dotfiles
.\install.ps1
```

> **Note Windows** : les symlinks nécessitent le mode Administrateur ou le
> [Developer Mode](https://learn.microsoft.com/windows/apps/get-started/enable-your-device-for-development) activé.

## Skills inclus

| Skill | Description |
|-------|-------------|
| `pdf-read` | Lecture complète de PDFs (texte, images, tableaux) |
| `content-report` | Rapport structuré depuis n'importe quelle source |
| `markdown` | Rédaction Markdown technique (Google Style Guide) |
| `diagram` | Diagrammes Mermaid et draw.io (architecture, flux, classes) |
| `dep-audit` | Audit dépendances Python (imports vs requirements.txt) |

## Vérification

Dans Claude Code, taper `/?` pour voir les skills chargés.

## Structure

```
claude-dotfiles/
├── install.sh          # Script Linux/macOS
├── install.ps1         # Script Windows PowerShell
├── settings.json       # Settings globaux Claude Code
├── skills/
│   ├── pdf-read/
│   ├── content-report/
│   ├── markdown/
│   ├── diagram/
│   └── dep-audit/
└── README.md
```
