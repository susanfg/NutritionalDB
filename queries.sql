SELECT NutritionalDB.Food.Name, NutritionalDB.Food.Protein
FROM NutritionalDB.Food JOIN NutritionalDB.TypeOfFood ON Food.TypeOfFood = TypeOfFood.Type WHERE Food.Protein > 20 AND Type = 'meat';

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

<<<<<<< HEAD
SELECT NutritionalDB.f.Name FROM NutritionalDB.Food f JOIN NutritionalDB.TypeOfFood t ON f.TypeOfFood = t.Type
WHERE t.Origin = 'animal' AND (f.Protein > 15 OR f.Iron > 5);
=======
SELECT NutritionalDB.Diet.Description
FROM NutritionalDB.Diet JOIN NutritionalDB.Patient
>>>>>>> 658bd2dd57c98f54717962cd1c528489a3382c14
