# ============================================
# FROOM-public Repository Builder (PowerShell)
# ============================================

# Root-Verzeichnis definieren
$root = "C:\dev\froom_public"
Set-Location $root

# Ordnerstruktur erzeugen
New-Item -ItemType Directory -Force -Path "$root\papers" | Out-Null
New-Item -ItemType Directory -Force -Path "$root\media"  | Out-Null

# README.md erzeugen
@"
# FROOM – Deterministic LLM Paradigm

This repository contains the public conceptual materials for the FROOM paradigm:
a structurally deterministic approach to LLM-based systems.

## Contents

- papers/FROOM_Paradigm.pdf – Paradigm paper  
- papers/FROOM_Whitepaper.pdf – Whitepaper  
- media/FROOM_Film.* – Explanatory film (link or file)

The paradigm is public.  
The underlying technology remains fully proprietary.
"@ | Out-File "$root\README.md" -Encoding UTF8

# IP_Notice.txt erzeugen
@"
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
"@ | Out-File "$root\IP_Notice.txt" -Encoding UTF8

# LICENSE erzeugen (CC BY-NC-ND 4.0)
@"
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International

You are free to:
- Share — copy and redistribute the material in any medium or format

Under the following terms:
- Attribution — You must give appropriate credit.
- NonCommercial — You may not use the material for commercial purposes.
- NoDerivatives — If you remix, transform, or build upon the material, you may not distribute the modified material.

No additional restrictions.
"@ | Out-File "$root\LICENSE" -Encoding UTF8

# Platzhalterdateien erzeugen
"Placeholder for Paradigm Paper"  | Out-File "$root\papers\FROOM_Paradigm.pdf"
"Placeholder for Whitepaper"      | Out-File "$root\papers\FROOM_Whitepaper.pdf"
"Placeholder for FROOM film."     | Out-File "$root\media\FROOM_Film.txt"

Write-Host "FROOM-public structure successfully generated."
