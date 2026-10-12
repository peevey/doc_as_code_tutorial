# Doc as Code-Tutorial

In diesem GIT liegen die Rohdaten des Doc as Code-Tutorials.

## Das Tutorial als PDF und HTML
Das Tutorial als PDF befinden sich unter `exporte`. Wichtig: Im HTML sind die Bildpfade relativ angelegt.

### PDF bauen

Voraussetzung: Ruby ab Version 3.0 mit RubyGems und Bash. Im Repository-Verzeichnis:

```bash
gem install asciidoctor --version 2.0.26 --no-document
gem install asciidoctor-pdf --version 2.3.24 --no-document
gem install rouge --version 4.6.1 --no-document
bash scripts/build-pdf.sh
```

Das erzeugt `exporte/doc_as_code_tutorial.pdf` aus der Kopfdatei und ihren
eingebundenen Kapiteln, mit Bildern und dem Theme aus `themes/pdf_theme.yml`.
Ein anderer Ausgabepfad kann als Argument angegeben werden:

```bash
bash scripts/build-pdf.sh _site/doc_as_code_tutorial.pdf
```

Der GitHub-Pages-Workflow baut bei jedem Push auf `master` sowie bei manuellem
Start auch das PDF. Die veröffentlichte HTML-Seite enthält einen Download-Link.
Zusätzlich steht das PDF im Workflow-Lauf als Artefakt
`doc_as_code_tutorial-pdf` zur Verfügung.

## Kopfdatei

Die Kopfdatei des Tutorials ist [00_tutorial_master.adoc](pages/00_tutorial_master.adoc) 

## Zum Verzeichnisaufbau
Der Aufbau orientiert sich grob an dem bei Verwendung von *Antora* vorgesehenen standardisierten Verzeichnisaufbau. 
https://docs.antora.org/antora/latest/standard-directories/

`assets` enthält den Unterordner `images`

`pages` enthält die einzelnen asciidoc-Textbausteine, aus denen die Dokumentation aufgebaut ist

`examples` enthält die einzelnen asciidoc-Beispieltexte, die im Rahmen des Tutorials verwendet werden

`exporte` enthält einen PDF- und einen HTML-Export des Tutorials

`fonts` enthält die Standardfonts, die im PDF-Export verwendet werden. 

`themes` enthält css-Styles für den HTML-Export und ein PDF-Theme

