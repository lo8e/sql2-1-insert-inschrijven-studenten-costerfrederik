use lo8e_sql2;
SELECT studenten.ov_nummer, studenten.voornaam, klassen_studenten.klas_code, klassen.cohort, docenten.voorletters
FROM studenten
INNER JOIN klassen_studenten ON studenten.ov_nummer = klassen_studenten.ov_nummer
INNER JOIN klassen ON klassen_studenten.klas_code = klassen.klas_code
INNER JOIN docenten ON klassen.slb_code = docenten.docent_code
WHERE studenten.actief = true
ORDER BY klas_code, studenten.achternaam;