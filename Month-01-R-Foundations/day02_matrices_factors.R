# ==============================================================================
# Day 02: Matrices & Factors — Microplate Reader & Blood Group Categorization
# Track: 300-Day Computational Pathology & Bioinformatics Challenge
# ==============================================================================

# 1. FACTORS (Categorical Clinical Data)
blood_types <- c("A", "O", "B", "AB", "O", "A", "O", "B")
patient_blood_type <- factor(blood_types, levels = c("A", "B", "AB", "O"))

# Summary count of patient ABO distribution
print("Blood Group Distribution:")
print(table(patient_blood_type))

# 2. MATRICES (2D Microplate Reader Absorbance Array)
# Simulating ELISA absorbance readings across an 8-row x 12-column 96-well plate
set.seed(42) # For reproducible random values
plate_readings <- matrix(
  round(runif(96, min = 0.150, max = 2.400), 3),
  nrow = 8,
  ncol = 12,
  dimnames = list(
    Row = LETTERS[1:8],              # Rows A-H
    Col = paste0("Col_", 1:12)       # Columns 1-12
  )
)

print("96-Well Microplate Absorbance Matrix (First 4 rows):")
print(plate_readings[1:4, ])

# 3. MATRIX SUBSETTING & DIAGNOSTIC THRESHOLDING
# Extract positive control samples located in Column 1 (Rows A-D)
positive_controls <- plate_readings[1:4, "Col_1"]
mean_pos_control <- mean(positive_controls)

# Flag wells exceeding positive threshold (> 1.2 absorbance)
high_absorbance_wells <- plate_readings > 1.200

print(paste("Mean Positive Control Absorbance:", round(mean_pos_control, 3)))
print("Wells Exceeding Threshold (TRUE/FALSE Matrix):")
print(high_absorbance_wells[1:4, 1:6])
