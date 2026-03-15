# Claude Skills Registry

Registre central des skills et connecteurs MCP pour
[Claude Code](https://docs.anthropic.com/en/docs/claude-code) et
[Claude.ai](https://claude.ai) (Chat / Cowork).

## Pourquoi ce repo ?

Claude Code et Claude.ai ont chacun leurs propres skills et
connecteurs MCP, mais sans synchronisation entre les deux. Ce repo
sert de **source de verite unique** et versionnee pour documenter
tout ce qui est disponible dans les deux mondes.

## Structure

```
claude-skills/
├── registry.yaml          # Catalogue central (skills + MCP)
├── skills/                # Skills Claude Code (SKILL.md)
│   ├── pdf-read/
│   ├── content-report/
│   ├── markdown/
│   ├── diagram/
│   └── dep-audit/
├── cloud/                 # Docs skills Claude.ai Cloud
│   └── _TEMPLATE.md
├── install.sh             # Installe les skills Code (Linux/macOS)
├── install.ps1            # Installe les skills Code (Windows)
├── settings.json          # Settings globaux Claude Code
├── SKILLS.md              # Reference detaillee des skills Code
└── README.md
```

## Skills Claude Code

| Skill | Commande | Description |
|:------|:---------|:------------|
| `pdf-read` | `/pdf-read <path> [pages]` | Lecture complete de PDFs |
| `content-report` | `/content-report <path>` | Rapport structure multi-source |
| `markdown` | `/markdown <action> [path]` | Redaction Markdown technique |
| `diagram` | `/diagram <fmt> <type> [path]` | Diagrammes Mermaid / draw.io |
| `dep-audit` | `/dep-audit` | Audit dependances Python |

Voir [`SKILLS.md`](SKILLS.md) pour la documentation detaillee.

## Skills Claude.ai Cloud

A documenter dans [`cloud/`](cloud/) et
[`registry.yaml`](registry.yaml).

## Connecteurs MCP

A documenter dans [`registry.yaml`](registry.yaml).

## Installation des skills Claude Code

**Linux / macOS :**

```bash
git clone git@github.com:<user>/claude-skills.git ~/claude-skills
cd ~/claude-skills
chmod +x install.sh
./install.sh
```

**Windows (PowerShell Administrateur) :**

```powershell
git clone git@github.com:<user>/claude-skills.git $HOME\claude-skills
cd $HOME\claude-skills
.\install.ps1
```

> **Note Windows** : les symlinks necessitent le mode Administrateur ou
> le [Developer Mode](https://learn.microsoft.com/windows/apps/get-started/enable-your-device-for-development) active.

## Ajouter un skill Cloud

1. Ajouter une entree dans `registry.yaml` sous `skills:`
2. (Optionnel) Creer un fichier `cloud/<nom>.md` base sur
   `cloud/_TEMPLATE.md`

## Verification

Dans Claude Code, taper `/?` pour voir les skills charges.
