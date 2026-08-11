USE PunjabDevelopmentAuthority;
GO

CREATE TABLE pm.Schemes
(
    Scheme_ID INT IDENTITY(1,1) PRIMARY KEY,
    Authority_ID INT NOT NULL,
    Scheme_Code VARCHAR(30) NOT NULL,
    Scheme_Name VARCHAR(150) NOT NULL,
    District VARCHAR(100) NOT NULL,
    Primary_City VARCHAR(100) NOT NULL,
    Scheme_Type VARCHAR(50) NOT NULL,
    Is_Active BIT NOT NULL DEFAULT 1,
    Created_Date DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Schemes_Authorities
        FOREIGN KEY (Authority_ID)
        REFERENCES pm.Authorities(Authority_ID),

    CONSTRAINT UQ_Schemes_Authority_SchemeCode
        UNIQUE (Authority_ID, Scheme_Code)
);
GO


"FOREIGN KEY (Authority_ID)
REFERENCES pm.Authorities(Authority_ID)

This means SQL Server will not allow a scheme to reference an authority that doesn't exist.
That's an important piece of real database integrity."
