# Skills Reference

Documentation detaillee des skills disponibles dans ce repo.

## Vue d'ensemble

| Skill | Commande | Outils utilises |
|:------|:---------|:----------------|
| PDF Read | `/pdf-read <path_or_url> [pages]` | Read, Bash |
| Content Report | `/content-report <path_or_url>` | Read, Bash, Glob, Grep, WebFetch |
| Markdown | `/markdown <action> [path]` | Read, Bash, Glob, Grep, Edit, Write |
| Diagram | `/diagram <format> <type> [path]` | Read, Write, Edit, Bash, Glob, Grep |
| Dep Audit | `/dep-audit` | Read, Glob, Grep, Bash |

## pdf-read

Extraction complete du contenu d'un PDF : texte structure,
images/diagrammes (rendus visuellement), tableaux et metadonnees.

- **Source** : chemin local ou URL
- **Pages** : `1-10`, `5`, `all` (defaut : 40 premieres)
- **Capacites** : metadonnees, table des matieres, tableaux en
  markdown, rendu PNG des pages avec figures, detection de PDF scanne

## content-report

Rapport structure depuis n'importe quelle source. Auto-detecte le type
et produit une analyse detaillee.

**Types supportes** :

- PDF (via PyMuPDF)
- Pages web (via WebFetch)
- Code Python (analyse structurelle)
- Images (vision multimodale)
- Notebooks Jupyter
- Markdown, YAML, JSON, CSV
- Dossiers (inventaire + fichiers cles)

**Sortie** : rapport standardise avec Source Info, Summary, Key Content,
Figures, Tables, Structure et References.

## markdown

Generation et amelioration de contenu Markdown technique de qualite
professionnelle, base sur le Google Markdown Style Guide.

**Actions** :

| Action | Usage |
|:-------|:------|
| `write <path>` | Creer un nouveau document |
| `improve <path>` | Ameliorer un fichier existant |
| `review <path>` | Audit qualite avec score /100 |
| `template <type>` | Squelette (`readme`, `spec`, `report`, `blog`, `api`, `changelog`) |

## diagram

Diagrammes techniques professionnels en Mermaid et draw.io XML.

**Formats** : `mermaid`, `drawio`

**Types de diagrammes** :

| Type | Usage |
|:-----|:------|
| `flow` | Pipelines, workflows |
| `arch` | Architecture systeme |
| `class` | Structure du code |
| `sequence` | Interactions entre composants |
| `state` | Machines a etats |
| `c4` | Architecture formelle (C4 Model) |
| `block` | Layouts en couches |
| `er` | Schemas de donnees |
| `gantt` | Plannings, roadmaps |

## dep-audit

Audit des dependances Python. Compare les imports reels dans le code
(`.py` et `.ipynb`) avec `requirements.txt`.

**Statuts detectes** :

- **OK** : present dans le code et dans requirements.txt
- **MANQUANT** : importe mais absent de requirements.txt
- **INUTILE** : declare mais jamais importe
- **TRANSITIF** : dependance indirecte d'un autre package
