# ==============================================================================
# Day 01: Introduction to R — Variables, Vectors & Data Frames
# Track: 300-Day Computational Pathology & Bioinformatics Challenge
# ==============================================================================

# 1. VARIABLES & BASIC DATA TYPES
student_name <- "Kenneth"         # Character string
academic_cgpa <- 4.53             # Numeric (double)
level_standing <- 600             # Numeric (integer)
is_final_year <- TRUE             # Logical (Boolean)

# 2. VECTORS
patient_ids <- c("P001", "P002", "P003", "P004", "P005")
hb_levels_g_dl <- c(13.5, 14.2, 10.8, 15.1, 11.4)  # Hemoglobin in g/dL
is_anemic <- hb_levels_g_dl < 12.0                  # Evaluates to logical vector

# 3. DATA FRAME
clinical_data <- data.frame(
  Patient_ID = patient_ids,
  Hemoglobin = hb_levels_g_dl,
  Anemic_Status = is_anemic,
  Primary_Department = c("Hematology", "Microbiology", "Chemical Pathology", "Blood Bank", "Hematology"),
  stringsAsFactors = FALSE
)

# Display dataset
print("Clinical Dataset:")
print(clinical_data)

