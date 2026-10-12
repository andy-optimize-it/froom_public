#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="FROOM-public"

# 1. Repo-Verzeichnis anlegen
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

# 2. Basisstruktur anlegen
mkdir -p papers
mkdir -p media

# 3. README erstellen (Minimalfassung, später von dir zu ergänzen)
cat > README.md << 'EOF'
# FROOM – Deterministic LLM Paradigm

This repository contains the public conceptual materials for the FROOM paradigm:
a structurally deterministic approach to LLM-based systems.

## Contents

- `papers/FROOM_Paradigm.pdf` – Paradigm paper
- `papers/FROOM_Whitepaper.pdf` – Whitepaper
- `media/FROOM_Film.*` – Explanatory film (link or file)

The paradigm is public. The underlying technology remains proprietary.

EOF

# 4. IP Notice
cat > IP_Notice.txt << 'EOF'
FROOM – Intellectual Property Notice
------------------------------------

The FROOM paradigm (conceptual description, high-level architecture, and papers)
is made publicly accessible for discussion and evaluation.

However, the FROOM technology itself remains fully proprietary. This includes,
without limitation:

- runtime mechanisms
- operator machine
- scheduling and freeze mechanisms
- drift detection and comparison logic
- emergence interpretation
- implementation details, source code, and internal tooling

No rights to the underlying implementation are granted by this repository.
EOF

# 5. Lizenz (Beispiel: CC BY-NC-ND 4.0 Hinweis – bei Bedarf anpassen)
cat > LICENSE << 'EOF'
This work is shared under a restrictive license intended for reading and
non-commercial evaluation only.

Unless explicitly agreed otherwise in writing, no permission is granted to:

- modify
- redistribute
- use commercially
- integrate into products or services

For any use beyond private reading and evaluation, prior written consent
from the author is required.
EOF

# 6. Platzhalter für Papers und Film
# (Hier nur Dummy-Dateien; echte PDFs/Video später ersetzen)
touch papers/FROOM_Paradigm.pdf
touch papers/FROOM_Whitepaper.pdf
touch media/FROOM_Film.txt

cat > media/FROOM_Film.txt << 'EOF'
Placeholder for FROOM film.

Replace this file with:
- either an MP4 file (e.g. FROOM_Film.mp4)
- or a link to an unlisted YouTube/Vimeo video.
EOF

# 7. Git initialisieren (optional, falls noch nicht geschehen)
git init
git add .
git commit -m "Initial public paradigm repo structure for FROOM"

echo "Repository structure '$REPO_NAME' created and initialized."
