#!/usr/bin/env bash
set -euo pipefail

# Relative input and asset paths always start at the repository root.
cd "$(dirname "${BASH_SOURCE[0]}")/.."

output="${1:-exporte/doc_as_code_tutorial.pdf}"
mkdir -p "$(dirname "$output")"

asciidoctor-pdf --failure-level WARN \
  -a pdf-themesdir=themes \
  -a "pdf-fontsdir=font/noto_sans;GEM_FONTS_DIR" \
  -o "$output" \
  pages/00_tutorial_master.adoc
