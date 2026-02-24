# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Research data project for the study **"How Purpose and Happiness Differ: Correlates and Consequences Over Two Years"** (PI: Dr. Todd B. Kashdan, Well-Being Laboratory, George Mason University). Data dictionary authored by Dr. Patrick E. McKnight.

This is a **longitudinal cohort study** (3 waves: baseline, 6-month, 2-year) with N=345 enrolled and N=119 complete at all waves. The dataset contains 3,557 variables across 345 participants.

## Key Files

- `alldatPvH4LLM.csv.gz` — Primary dataset (gzipped CSV, 345 rows x 3,557 columns)
- `Psychological Flexibility_Full Dataset_070822.sav` — Original SPSS dataset
- `DATA_DICTIONARY.md` / `DATA_DICTIONARY.html` — Structured data dictionary with variable names, constructs, sample sizes, and missing data diagnostics
- `PF_Codebook_temp.md` — Full codebook with all 46 measures, item text, scoring rules, and SPSS variable mappings
- `PF Codebook.docx` — Original codebook (Word format)
- `happiness purpose paper plan.docx` — Paper plan / manuscript outline
- `Day Reconstruction Method and EMA items 060315.docx` — DRM and EMA item documentation
- `bibliography.bib`, `references.bib`, `zotero_purpose.bib` — BibTeX reference files

## Variable Naming Convention

```
{timepoint}_{measure}_{item_or_subscale}
```
- **Baseline**: `b_[measure]_[item/subscale]`
- **6-Month Follow-up**: `fu1_[measure]_[item/subscale]`
- **2-Year Follow-up**: `fu2_[measure]_[item/subscale]`
- **Composite scores**: `[prefix]_[measure]_mean` (POMP-standardized 0–100 scale)

## Core Analysis Variables

**Predictors (Independent Variables):**
- `b_shs_mean` / `fu1_shs_mean` / `fu2_shs_mean` — Subjective Happiness (SHS)
- `b_bpurp_mean` / `fu1_bpurp_mean` / `fu2_bpurp_mean` — Brief Purpose in Life (BPURP)
- `b_pilea_eng_mean` / `fu1_pilea_eng_mean` / `fu2_pilea_eng_mean` — Purpose External Aims (PILEA)

**Outcomes (Dependent Variables):**
- `*_swls_mean` — Life Satisfaction (SWLS)
- `*_gshs_mean`, `*_gshs_path_mean`, `*_gshs_agen_mean` — Hope (GSHS: total, pathways, agency)
- `*_bmpns_AS_mean`, `*_bmpns_CS_mean`, `*_bmpns_RS_mean` — Basic Needs (autonomy, competence, relatedness)
- `*_phq_mean` — Depression (PHQ-8)
- `*_icsa_mean` — Anxiety (ICSA)

## Missing Data

- 75.4% of cases have some missing data (primarily systematic attrition, not item non-response)
- 95% monotone missing pattern (participants who drop out stay out)
- Missing mechanism assessed as MAR (Missing at Random)
- **Multiple imputation strongly recommended**: MICE with Predictive Mean Matching (PMM), 20 imputations, Rubin's rules for pooling

## Data Loading

```r
# R
dat <- read.csv(gzfile("alldatPvH4LLM.csv.gz"))

# Python
import pandas as pd
dat = pd.read_csv("alldatPvH4LLM.csv.gz")
```

The SPSS file can be read with `haven::read_sav()` (R) or `pyreadstat.read_sav()` (Python).

## Important Notes

- All composite scores use POMP (Percent of Maximum Possible) scaling: 0–100
- Data are unchanged from original Qualtrics collection except for POMP computations
- Three measures expected per codebook are **missing from the dataset**: PPFI, PVQ, GAD
- Copyright: All rights reserved to Dr. Todd B. Kashdan and the Well-Being Laboratory at George Mason University. Cite the original study when using this dataset.
