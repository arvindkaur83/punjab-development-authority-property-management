USE PunjabDevelopmentAuthority;
GO

CREATE TABLE pm.Authorities
(
    Authority_ID INT IDENTITY(1,1) PRIMARY KEY,
    Authority_Code VARCHAR(10) NOT NULL UNIQUE,
    Authority_Name VARCHAR(150) NOT NULL,
    Headquarters_City VARCHAR(100) NOT NULL,
    State_Name VARCHAR(50) NOT NULL DEFAULT 'Punjab',
    Is_Active BIT NOT NULL DEFAULT 1,
    Created_Date DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);
GO

INSERT INTO pm.Authorities
(
    Authority_Code,
    Authority_Name,
    Headquarters_City
)
VALUES
('GMADA', 'Greater Mohali Area Development Authority', 'SAS Nagar (Mohali)'),
('GLADA', 'Greater Ludhiana Area Development Authority', 'Ludhiana'),
('JDA', 'Jalandhar Development Authority', 'Jalandhar'),
('PDA', 'Patiala Development Authority', 'Patiala'),
('ADA', 'Amritsar Development Authority', 'Amritsar'),
('BDA', 'Bathinda Development Authority', 'Bathinda');
GO


SELECT *
FROM pm.Authorities
ORDER BY Authority_ID;
