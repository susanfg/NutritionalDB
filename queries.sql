SELECT NutritionalDB.Food.Name FROM NutritionalDB.Food WHERE Food.Protein > 20;

SELECT NutritionalDB.Patient.Name FROM NutritionalDB.Patient JOIN NutritionalDB.Nutritionist 
ON Patient.Doctor = Nutritionist.idNutritionist WHERE Nutritionist.FullName = 'Pablo Moreno Garcia-Espina';

SELECT NutritionalDB.Diet.Description 
FROM NutritionalDB.Diet JOIN NutritionalDB.Nutritionist ON Diet.Creator = Nutritionist.idNutritionist 
WHERE Nutritionist.FullName = 'Susana Rocio Fernandez Giaccomassi';

SELECT NutritionalDB.Diet.Description as 'Diets with more than ten foods'  , NutritionalDB.Nutritionist.FullName as 'Creator'
FROM NutritionalDB.Diet JOIN NutritionalDB.Nutritionist 
ON Diet.Creator = Nutritionist.idNutritionist
WHERE NutritionalDB.Diet.idDiet IN (
    SELECT NutritionalDB.Diet.idDiet 
    FROM NutritionalDB.ListOfFood GROUP BY idDiet HAVING COUNT(*) > 10
);

SELECT NutritionalDB.Food.Name, NutritionalDB.Food.Protein 
FROM NutritionalDB.Food 
WHERE NutritionalDB.Food.Protein > (
    SELECT AVG(NutritionalDB.Food.Protein) 
    FROM NutritionalDB.Food
);
