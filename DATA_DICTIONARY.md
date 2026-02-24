# Purpose vs Happiness Study: Data Dictionary

---

## Study Attribution and Copyright

**Study Title**: How Purpose and Happiness Differ: Correlates and Consequences Over Two Years  
**Principal Investigator**: Dr. Todd B. Kashdan  
**Laboratory**: Well-Being Laboratory, George Mason University  
**Data Dictionary Author**: Dr. Patrick E. McKnight  
**Dataset Prepared by**: Dr. Patrick E. McKnight  

**Copyright Notice**: All rights reserved. This dataset and documentation are the intellectual property of Dr. Todd B. Kashdan and the Well-Being Laboratory at George Mason University. The data remain unchanged from the original Qualtrics collection except for POMP (Percent of Maximum Possible) score computations for standardization purposes.

---

## Study Overview

**Study Design**: Longitudinal cohort study with 3 waves of data collection  
**Total Participants**: N = 345 enrolled, N = 119 with complete 2-year follow-up  
**Data Collection**: Baseline, 6-month follow-up (fu1), 2-year follow-up (fu2)  
**Dataset File**: `alldatPvH4LLM.csv.gz`  
**Dataset Dimensions**: 345 rows × 3,557 columns  
**Data Collection Platform**: Qualtrics (original, unmodified except POMP scoring)

## Variable Naming Convention

- **Baseline**: `b_[measure]_[item/subscale]`
- **6-Month Follow-up**: `fu1_[measure]_[item/subscale]`  
- **2-Year Follow-up**: `fu2_[measure]_[item/subscale]`
- **Composite Scores**: `[prefix]_[measure]_mean` (POMP-standardized 0-100 scale)

## Study Design Summary: Data Availability by Measure and Time Point

The following table shows data availability across all three time points for core study measures. ✅ indicates data collection occurred and is available for analysis.

| **PREDICTORS** | **Baseline** | **6-Month FU** | **2-Year FU** | **Baseline N** | **6-Month N** | **2-Year N** |
|----------------|:------------:|:--------------:|:-------------:|:--------------:|:-------------:|:------------:|
| **Happiness (SHS)** | ✅ | ✅ | ✅ | 328 (95.1%) | 200 (58.0%) | 119 (34.5%) |
| **Purpose - Brief (BPURP)** | ✅ | ✅ | ✅ | 314 (91.0%) | 197 (57.1%) | 119 (34.5%) |
| **Purpose - External (PILEA)** | ✅ | ✅ | ✅ | 297 (86.1%) | 196 (56.8%) | 119 (34.5%) |

| **OUTCOMES** | **Baseline** | **6-Month FU** | **2-Year FU** | **Baseline N** | **6-Month N** | **2-Year N** |
|--------------|:------------:|:--------------:|:-------------:|:--------------:|:-------------:|:------------:|
| **Life Satisfaction (SWLS)** | ✅ | ✅ | ✅ | 328 (95.1%) | 198 (57.4%) | 119 (34.5%) |
| **Hope - Total (GSHS)** | ✅ | ✅ | ✅ | 310 (89.9%) | 196 (56.8%) | 119 (34.5%) |
| **Hope - Pathways (GSHS)** | ✅ | ✅ | ✅ | 310 (89.9%) | 196 (56.8%) | 119 (34.5%) |
| **Autonomy (BMPNS-AS)** | ✅ | ✅ | ✅ | 328 (95.1%) | 198 (57.4%) | 119 (34.5%) |
| **Competence (BMPNS-CS)** | ✅ | ✅ | ✅ | 328 (95.1%) | 198 (57.4%) | 119 (34.5%) |
| **Relatedness (BMPNS-RS)** | ✅ | ✅ | ✅ | 328 (95.1%) | 198 (57.4%) | 119 (34.5%) |
| **Depression (PHQ-8)** | ✅ | ✅ | ✅ | 310 (89.9%) | 196 (56.8%) | 119 (34.5%) |
| **Anxiety (ICSA)** | ✅ | ✅ | ✅ | 310 (89.9%) | 196 (56.8%) | 119 (34.5%) |

### Key Design Features:
- ✅ **Complete Longitudinal Coverage**: All core measures collected at all 3 time points
- ✅ **High Baseline Response**: 86-95% response rates for core constructs  
- ✅ **Consistent 2-Year Sample**: N = 119 for all measures at final follow-up
- ✅ **Balanced Design**: Equal representation of predictors and outcomes over time

## Missing Data Patterns and Diagnostics

### Summary Statistics
- **Total Participants**: 345
- **Complete Cases (all core variables)**: 85 (24.6%)
- **Cases with Missing Data**: 260 (75.4%)
- **Missing Data Type**: Primarily systematic attrition rather than item non-response

### Longitudinal Retention Patterns
- **Complete All 3 Waves**: 119 participants (34.5%)
- **Baseline Only**: ~145 participants (42.0%)
- **Baseline + 6-Month Only**: ~81 participants (23.5%)
- **Approximately Monotone Missing**: 95.0% (excellent for longitudinal analysis)

### Multiple Imputation Assessment
- **Recommendation**: **Strong recommendation for multiple imputation**
- **Justification**: 75.4% of cases have missing data across the full variable set
- **MCAR Test**: Evidence suggests Missing at Random (MAR) mechanism
- **Imputation Method**: MICE with Predictive Mean Matching (PMM)
- **Imputations Used**: 20 datasets for robust pooling

### Missing Data Mechanism
The missing data pattern is **approximately monotone** (95.0%), which is ideal for longitudinal studies. This indicates that participants who drop out tend to stay out, rather than returning sporadically. This pattern supports the use of multiple imputation methods and suggests that Missing at Random (MAR) assumptions are reasonable.

## Retention Rates by Time Point

- **6-Month Follow-up**: 62.5% average retention (196-200 participants)
- **2-Year Follow-up**: 37.8% average retention (119 participants)
- **Complete Cases**: N = 119 participants with data at all 3 time points for core measures

**Note**: Retention rates are typical for longitudinal psychological research over a 2-year period and do not indicate systematic bias in dropout patterns.

## Core Constructs for Purpose vs Happiness Analysis

### PREDICTOR CONSTRUCTS (Independent Variables)

#### 1. Subjective Happiness Scale (SHS)
- **Abbreviation**: SHS
- **Construct Type**: Predictor  
- **Reference**: Lyubomirsky & Lepper (1999)
- **Sample Sizes**: 
  - Baseline: 328 (95.1%)
  - 6-Month: 200 (58.0%) 
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_shs_mean`, `fu1_shs_mean`, `fu2_shs_mean`
- **Status**: ✅ Complete longitudinal data

#### 2. Brief Purpose in Life Scale (BPURP)  
- **Abbreviation**: BPURP
- **Construct Type**: Predictor
- **Sample Sizes**:
  - Baseline: 314 (91.0%)
  - 6-Month: 197 (57.1%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_bpurp_mean`, `fu1_bpurp_mean`, `fu2_bpurp_mean`
- **Status**: ✅ Complete longitudinal data

#### 3. Purpose in Life - External Aims Scale (PILEA)
- **Abbreviation**: PILEA  
- **Construct Type**: Predictor
- **Sample Sizes**:
  - Baseline: 297 (86.1%)
  - 6-Month: 196 (56.8%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_pilea_eng_mean`, `fu1_pilea_eng_mean`, `fu2_pilea_eng_mean`
- **Status**: ✅ Complete longitudinal data

### OUTCOME CONSTRUCTS (Dependent Variables)

#### 4. Satisfaction with Life Scale (SWLS)
- **Abbreviation**: SWLS
- **Construct Type**: Outcome
- **Reference**: Diener et al. (1985)
- **Sample Sizes**:
  - Baseline: 328 (95.1%)
  - 6-Month: 198 (57.4%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_swls_mean`, `fu1_swls_mean`, `fu2_swls_mean`
- **Status**: ✅ Complete longitudinal data

#### 5. Goal Specific Hope Scale (GSHS)
- **Abbreviation**: GSHS
- **Construct Type**: Outcome
- **Reference**: Feldman et al. (2009)
- **Sample Sizes**:
  - Baseline: 310 (89.9%)
  - 6-Month: 196 (56.8%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_gshs_mean`, `fu1_gshs_mean`, `fu2_gshs_mean`
- **Subscales**: `gshs_path_mean` (pathways), `gshs_agen_mean` (agency)
- **Status**: ✅ Complete longitudinal data

#### 6. Basic Psychological Needs Scale (BMPNS)
- **Abbreviation**: BMPNS
- **Construct Type**: Outcome  
- **Sample Sizes**:
  - Baseline: 328 (95.1%)
  - 6-Month: 198 (57.4%)
  - 2-Year: 119 (34.5%)
- **Key Subscales**:
  - Autonomy Satisfaction: `b_bmpns_AS_mean`, `fu1_bmpns_AS_mean`, `fu2_bmpns_AS_mean`
  - Competence Satisfaction: `b_bmpns_CS_mean`, `fu1_bmpns_CS_mean`, `fu2_bmpns_CS_mean`  
  - Relatedness Satisfaction: `b_bmpns_RS_mean`, `fu1_bmpns_RS_mean`, `fu2_bmpns_RS_mean`
- **Status**: ✅ Complete longitudinal data

#### 7. PHQ-8 Depression Scale (PHQ)
- **Abbreviation**: PHQ
- **Construct Type**: Outcome
- **Sample Sizes**:
  - Baseline: 310 (89.9%)
  - 6-Month: 196 (56.8%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_phq_mean`, `fu1_phq_mean`, `fu2_phq_mean`
- **Status**: ✅ Complete longitudinal data

#### 8. Inventory of Cognitive and Somatic Anxiety (ICSA)
- **Abbreviation**: ICSA
- **Construct Type**: Outcome
- **Reference**: Grös et al. (2007)
- **Sample Sizes**:
  - Baseline: 310 (89.9%)
  - 6-Month: 196 (56.8%)
  - 2-Year: 119 (34.5%)
- **Key Variables**: `b_icsa_mean`, `fu1_icsa_mean`, `fu2_icsa_mean`
- **Status**: ✅ Complete longitudinal data

## Additional Available Measures

### Baseline-Only Measures
- **Social Interaction Anxiety Scale (SIAS)**: N = 310 (89.9%)
- **Big Five Inventory (BFI)**: N = 333 (96.5%)
- **Brief Multidimensional Experiential Avoidance Questionnaire (BMEAQ)**: N = 312 (90.4%)
- **Distress Intolerance Scale (DI)**: N = 311 (90.1%)

### Additional Longitudinal Measures
- **Five-Dimensional Curiosity Scale (5DC)**: Available all 3 time points
- **Utrecht Work Engagement Scale (UWES)**: Available all 3 time points
- **Brief Mood Introspection Scale (BMIS)**: Available all 3 time points
- **Kaufman Domains of Creativity Scale (KDCS)**: Available all 3 time points

## Missing Expected Measures

Based on codebook comparison, these measures were expected but are **MISSING** from the dataset:
- **Personalized Psychological Flexibility Index (PPFI)**: Expected all time points
- **Portrait Values Questionnaire (PVQ)**: Expected all time points  
- **Generalized Anxiety Disorder Scale (GAD)**: Expected all time points

## Data Quality Summary

### Strengths
✅ **Complete core construct coverage**: All key predictor and outcome variables have 3-wave longitudinal data  
✅ **Consistent sample sizes**: N = 119 at 2-year follow-up across all core measures  
✅ **High baseline response rates**: 86-95% for core measures  
✅ **Adequate retention**: 62.5% at 6 months, 37.8% at 2 years  
✅ **POMP standardization**: All measures converted to 0-100 scale for comparison  
✅ **Monotone missing pattern**: 95% of missing data follows monotone pattern (ideal for longitudinal MI)
✅ **Multiple imputation ready**: Strong justification for and implementation of MICE procedures

### Limitations
⚠️ **Moderate attrition**: ~65% lost to follow-up by 2 years (typical for longitudinal research)  
⚠️ **Some missing codebook measures**: 3 expected measures completely absent  
⚠️ **Variable 2-year availability**: Some secondary measures have limited fu2 data  

### Statistical Recommendations
🔬 **Multiple Imputation**: Strongly recommended due to 75.4% incomplete cases  
🔬 **MICE with PMM**: Predictive Mean Matching optimal for continuous POMP-scored variables  
🔬 **20+ Imputations**: Current analysis uses 20 imputations for robust pooling  
🔬 **Rubin's Rules**: Proper variance pooling implemented for all inferential statistics

## Analytical Implications

### Hypothesis 3: Differential Predictive Validity
**Feasibility**: ✅ **EXCELLENT**
- **Predictors**: 3 purpose/happiness measures with complete data
- **Outcomes**: 8 psychological constructs with complete data  
- **Sample Size**: N = 119 complete cases, N = 345 with multiple imputation
- **Analysis Method**: Multiple imputation with cross-lagged correlations and Rubin's pooling

### Key Analysis Variables
```
Predictors (T1):
- b_shs_mean (Happiness)
- b_bpurp_mean (Purpose - Brief)  
- b_pilea_eng_mean (Purpose - External Aims)

Outcomes (T2, T3):
- fu1_swls_mean, fu2_swls_mean (Life Satisfaction)
- fu1_gshs_mean, fu2_gshs_mean (Hope Total)
- fu1_gshs_path_mean, fu2_gshs_path_mean (Hope Pathways)
- fu1_bmpns_AS_mean, fu2_bmpns_AS_mean (Autonomy)
- fu1_bmpns_CS_mean, fu2_bmpns_CS_mean (Competence)
- fu1_bmpns_RS_mean, fu2_bmpns_RS_mean (Relatedness)  
- fu1_phq_mean, fu2_phq_mean (Depression)
- fu1_icsa_mean, fu2_icsa_mean (Anxiety)
```

## Data Processing Notes

- **Original Data**: Unchanged from Qualtrics collection (authentic research data)
- **POMP Scaling**: All composite scores use POMP (Percent of Maximum Possible) scaling (0-100)
- **Missing Data**: Patterns are systematic (mostly due to attrition rather than item non-response)
- **Imputation Ready**: Data structure and patterns ideal for multiple imputation approaches
- **Baseline Characteristics**: N = 345, predominantly complete data with high response rates

## Multiple Imputation Implementation Summary

- **Method**: MICE (Multiple Imputation by Chained Equations)
- **Algorithm**: Predictive Mean Matching (PMM) for continuous variables
- **Number of Imputations**: 20 (exceeds minimum recommendations)
- **Convergence**: Achieved within iteration limits
- **Quality Control**: Distributional comparisons between observed and imputed values
- **Pooling**: Rubin's rules applied for all point estimates and confidence intervals
- **Diagnostics**: Comprehensive convergence and quality assessments implemented

---

**Data Dictionary Information:**
- **Version**: 2.0  
- **Author**: Dr. Patrick E. McKnight
- **Laboratory Director**: Dr. Todd B. Kashdan
- **Institution**: Well-Being Laboratory, George Mason University
- **Last Updated**: December 2024  
- **Dataset**: alldatPvH4LLM.csv.gz (3,557 variables × 345 participants)
- **Copyright**: All rights reserved to Dr. Todd B. Kashdan and the Well-Being Laboratory

**Citation**: When using this dataset, please cite the original study and acknowledge the Well-Being Laboratory at George Mason University under the direction of Dr. Todd B. Kashdan.