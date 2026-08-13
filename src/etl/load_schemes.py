import pandas as pd

EXCEL_FILE = "data/raw/Punjab_Development_Authority_Property_Management_Dataset.xlsx"

schemes_df = pd.read_excel(
    EXCEL_FILE,
    sheet_name="Schemes"
)

print("Number of scheme records:", len(schemes_df))

print("\nColumn names:")
print(schemes_df.columns.tolist())

print("\nFirst 5 records:")
print(schemes_df.head())

# Expected columns
expected_columns = [
    "Scheme_ID",
    "Authority_Code",
    "Authority_Name",
    "Scheme",
    "District",
    "Primary_City",
    "Scheme_Type"
]

# Validate columns
missing_columns = [
    column for column in expected_columns
    if column not in schemes_df.columns
]

if missing_columns:
    raise ValueError(
        f"Missing expected columns: {missing_columns}"
    )

print("\nColumn validation: PASSED")

# Check missing Scheme IDs
missing_scheme_ids = schemes_df["Scheme_ID"].isna().sum()

print("Missing Scheme_ID:", missing_scheme_ids)

# Check missing Authority Codes
missing_authority_codes = schemes_df["Authority_Code"].isna().sum()

print("Missing Authority_Code:", missing_authority_codes)

# Check duplicate Scheme IDs
duplicate_scheme_ids = schemes_df["Scheme_ID"].duplicated().sum()

print("Duplicate Scheme_ID:", duplicate_scheme_ids)
