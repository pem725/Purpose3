# Purpose3 Manuscript Build System
# Usage:
#   make draft    - Render ALL docs, copy to docs/, commit, push (publishes to GH Pages)
#   make render   - Render all HTML locally only (no git)
#   make publish  - Copy current HTMLs to docs/ and push
#   make clean    - Remove build artifacts

MANUSCRIPT = Purpose3_manuscript
WILDCHILD  = Purpose3wildchild
REVIEW     = Purpose3_critical_review
DATE       = $(shell date '+%Y-%m-%d %H:%M')

.PHONY: draft render publish clean render-main render-wildchild render-review

# Full workflow: render all + publish
draft: render publish
	@echo "── All drafts published: $(DATE) ──"

# Render all three documents
render: render-main render-wildchild render-review

render-main:
	@echo "── Rendering main manuscript... ──"
	quarto render $(MANUSCRIPT).qmd --to html
	@echo "── Main manuscript complete ──"

render-wildchild:
	@echo "── Rendering wildchild... ──"
	quarto render $(WILDCHILD).qmd --to html
	@echo "── Wildchild complete ──"

render-review:
	@echo "── Rendering critical review... ──"
	quarto render $(REVIEW).qmd --to html
	@echo "── Critical review complete ──"

# Copy to docs/ and push to GitHub
publish:
	@echo "── Publishing to GitHub Pages... ──"
	cp $(MANUSCRIPT).html docs/index.html
	cp $(WILDCHILD).html docs/wildchild.html
	cp $(REVIEW).html docs/review.html
	git add docs/index.html docs/wildchild.html docs/review.html
	git add $(MANUSCRIPT).qmd $(WILDCHILD).qmd $(REVIEW).qmd
	git add references.bib CLAUDE.md Makefile .gitignore
	git add -f DATA_DICTIONARY.md DATA_DICTIONARY.html PF_Codebook_temp.md
	git commit -m "Draft update: $(DATE)"
	git push
	@echo "── Published. Pages will update in ~60 seconds. ──"
	@echo "── Main:     https://pem725.github.io/Purpose3/ ──"
	@echo "── Wildchild: https://pem725.github.io/Purpose3/wildchild.html ──"
	@echo "── Review:   https://pem725.github.io/Purpose3/review.html ──"

# Remove build artifacts
clean:
	rm -rf $(MANUSCRIPT)_cache $(MANUSCRIPT)_files
	rm -rf $(WILDCHILD)_cache $(WILDCHILD)_files
	rm -rf $(REVIEW)_cache $(REVIEW)_files
	rm -f $(MANUSCRIPT).html $(WILDCHILD).html $(REVIEW).html
