# Changelog — Differentiating Purpose and Happiness (Paper 3)

This log records substantive changes to the manuscripts and, more importantly,
*why* we made them. It complements the git history (which records every commit)
by capturing the reasoning behind milestone decisions and how our characterization
of the findings evolved, draft by draft.

Each milestone is tagged in git, so any prior draft can be regenerated:
`git checkout <tag> && make render`. Run `git tag -l` to list milestones.

Format: newest first. Each entry notes **What** changed and **Why**.

---

## [v2-context-specific] — 2026-06-05
Tag: `v2-context-specific`

**Thesis reframed from "purpose dominates" to context-specific.**
- *What:* Rewrote the abstract, discussion, and conclusion of the main manuscript.
  The paper no longer claims purpose is the stronger or broader predictor. It now
  claims that purpose and happiness each carry unique information in a different
  domain.
- *Why:* The framing did not match our own results. Across 50 outcomes the observed
  partial correlations gave happiness more unique effects than purpose (22 vs. 9),
  and Williams' tests were significant for only 3. Purpose's advantage is real but
  confined to personal strivings (7 of 8 vs. 2). Happiness predicts the affect-
  saturated domains (daily DRM episodes, coping). Stress-related growth is a near-
  tie (pr = .19 vs. .15). A reviewer would have caught the overclaim against Table 5.

**Fixed a sign-convention bug in the wildchild SEM summary.**
- *What:* Reverse-code negatively-valenced outcomes (depression, anxiety, distress,
  daily negative affect) before averaging and sign-counting SEM paths.
- *Why:* The summary had reported "purpose stronger in 7 of 9" with average paths of
  .20 vs. .08. That was an artifact: both constructs load negatively on depression,
  so the raw "b_p − b_h > 0" rule counted happiness's stronger protective effect as
  a purpose win. Corrected, the averages are happiness .42 vs. purpose .25, and the
  latent models converge with the observed-variable result.

**Latent-variable check (wildchild) confirms the reframe.**
- *What:* Documented the convergence as a worked example in the critical review.
- *Why:* Reliabilities are near-identical (omega .87 / .86) and the latent
  correlation (.44) ≈ the observed (.40), so disattenuation barely moves anything.
  The SEM reproduces the same dissociation. The dual-track reconciliation also
  caught the SEM bug a single-track analysis would have published.

**Network analysis restored.**
- *What:* Require bootnet >= 1.8 for the wildchild network section.
- *Why:* bootnet <= 1.6 imports `dplyr::id` (removed in dplyr 1.0) and would not
  load on dplyr 1.2.1; bootnet 1.8 drops the stale import.

**Housekeeping:** humanized manuscript prose (removed AI-tell language), cleaned
redundant build artifacts, committed the Kaufman creativity excerpt.

---

## [v1-purpose-forward] — 2026-02 to 2026-05
Tag: `v1-purpose-forward`

**Initial theory-driven manuscript + empirical companion + critical review.**
- *What:* First complete drafts. Main manuscript (POMP composites, MICE, Williams'
  t-tests, partial correlations). Wildchild empirical companion (CFA, SEM, network,
  LPA, latent growth). Critical review comparing the two approaches. Kaufman
  creativity excerpt.
- *Characterization at this stage:* framed purpose as the stronger and broader
  predictor of striving, coping, and growth outcomes — the a-priori hypothesis.
  This framing was revised in v2 after reconciling it with the results. We keep this
  milestone tagged because the contrast between the hypothesized and observed story
  is itself part of the paper's argument.
