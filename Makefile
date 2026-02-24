# Purpose3 Manuscript Build System
# Usage:
#   make draft    - Render HTML, copy to docs/, commit, push (publishes to GH Pages)
#   make render   - Render HTML locally only (no git)
#   make publish  - Copy current HTML to docs/ and push
#   make clean    - Remove build artifacts

MANUSCRIPT = Purpose3_manuscript
QMD        = $(MANUSCRIPT).qmd
HTML       = $(MANUSCRIPT).html
DOCS       = docs/index.html
DATE       = $(shell date '+%Y-%m-%d %H:%M')

.PHONY: draft render publish clean

# Full workflow: render + publish
draft: render publish
	@echo "── Draft published: $(DATE) ──"

# Render Quarto to HTML (requires data files locally)
render:
	@echo "── Rendering manuscript... ──"
	quarto render $(QMD) --to html
	@echo "── Render complete ──"

# Copy to docs/ and push to GitHub
publish:
	@echo "── Publishing to GitHub Pages... ──"
	cp $(HTML) $(DOCS)
	git add docs/index.html $(QMD) references.bib CLAUDE.md Makefile .gitignore
	git add -f DATA_DICTIONARY.md DATA_DICTIONARY.html PF_Codebook_temp.md
	git commit -m "Draft update: $(DATE)"
	git push
	@echo "── Published. Page will update in ~60 seconds. ──"

# Remove build artifacts
clean:
	rm -rf $(MANUSCRIPT)_cache $(MANUSCRIPT)_files
	rm -f $(HTML)
