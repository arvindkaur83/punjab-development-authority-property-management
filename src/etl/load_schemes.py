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
