# 300-Day Computational Pathology & Bioinformatics Challenge

Welcome to my personal documentation repository for the 300-Day Computational Pathology & Bioinformatics Challenge! 

This repository tracks my daily progress as I transition from clinical laboratory diagnostics into computational biology, digital pathology, and machine learning pipelines.

---

## Challenge Overview

- Goal: Master computational techniques applicable to diagnostic medicine and biomedical data analysis over 300 daily logs.
- Primary Tech Stack: R, Python, PyTorch, OpenCV, OpenSlide, QuPath, and Bioconductor.
- Focus Areas:
  1. Data Science & Statistical Foundations (R & Python)
  2. Bioinformatics & High-Throughput Genomic Data
  3. Digital Pathology & Whole Slide Image Processing
  4. Machine Learning & Deep Learning for Clinical Diagnostics

---

## Repository Structure

300-Days-Computational-Pathology/
├── Month-01-R-Foundations/
│   ├── day01_r_basics.R
│   ├── day02_matrices_factors.R
│   └── ...
└── README.md

---

## Daily Progress Log

Day 01 | Topic: R Basics & Data Structures | Language: R
Description: Learned basic variable assignment, vector operations, and constructed a clinical laboratory sample data frame.

Day 02 | Topic: Matrices & Factors in Clinical Data | Language: R
Description: Structured blood group factors for ABO typing and simulated a 96-well microplate reader absorbance matrix.

---

## Detailed Daily Breakdown

### Day 01: Introduction to R — Variables, Vectors & Data Frames
- File Directory: Month-01-R-Foundations/day01_r_basics.R

Key Concepts Learned Today:
1. Variables & Data Types: Learned how to store values using the R assignment operator (<-). Stored text (character strings), numerical measurements (doubles and integers), and true/false values (logicals).
2. Vectors: Built atomic vectors to hold lists of patient identifiers and hemoglobin levels in g/dL. Created logical vectors by evaluating conditions across the dataset (e.g., checking if hemoglobin is below 12.0 g/dL for anemia screening).
3. Data Frames: Combined vectors together to create a structured clinical dataset that maps patient IDs, lab results, anemia diagnostic status, and medical laboratory departments (Hematology, Microbiology, Chemical Pathology, Blood Bank).

Code Summary from Day 01:
clinical_data <- data.frame(
  Patient_ID = patient_ids,
  Hemoglobin = hb_levels_g_dl,
  Anemic_Status = is_anemic,
  Primary_Department = c("Hematology", "Microbiology", "Chemical Pathology", "Blood Bank", "Hematology"),
  stringsAsFactors = FALSE
)

---

### Day 02: Matrices & Factors in Clinical Data
- File Directory: Month-01-R-Foundations/day02_matrices_factors.R

Key Concepts Learned Today:
1. Factors: Converted blood type character vectors into defined categorical factors to enforce strict clinical blood group levels (A, B, AB, O) and perform population frequency counts using table().
2. Matrices: Built an 8x12 numerical matrix representing optical density (OD) absorbance readings from a 96-well microplate reader (Rows A-H, Columns 1-12).
3. Matrix Subsetting & Indexing: Extracted row/column slices for assay controls, calculated mean control values, and applied logical thresholding across the entire plate matrix to identify positive diagnostic wells (> 1.2 OD).

Code Summary from Day 02:
plate_readings <- matrix(
  round(runif(96, min = 0.150, max = 2.400), 3),
  nrow = 8, ncol = 12,
  dimnames = list(Row = LETTERS[1:8], Col = paste0("Col_", 1:12))
)

---

## Contact Information

- GitHub Profile: https://github.com/kenneth381
- Email: kennethappiahnti@gmail.com
