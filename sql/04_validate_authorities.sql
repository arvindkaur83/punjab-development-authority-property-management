SELECT
    Authority_Code,
    Authority_Name,
    Headquarters_City,
    State_Name,
    Is_Active
FROM pm.Authorities;

SELECT
    Authority_Code,
    COUNT(*) AS Authority_Count
FROM pm.Authorities
GROUP BY Authority_Code
HAVING COUNT(*) > 1;
