USE PunjabDevelopmentAuthority;
GO

CREATE TABLE stg.Schemes
(
    Scheme_ID VARCHAR(30),
    Authority_Code VARCHAR(10),
    Authority_Name VARCHAR(150),
    Scheme_Name VARCHAR(150),
    District VARCHAR(100),
    Primary_City VARCHAR(100),
    Scheme_Type VARCHAR(50)
);
GO
