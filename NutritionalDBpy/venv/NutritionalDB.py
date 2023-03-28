import pymysql
import pymysql.cursors
from pymysql import DatabaseError


class NutritionalQuerys(object):
    def __init__(self, host, user, password, database):
        self.connection = pymysql.connect(host=host,
                                          user=user,
                                          password=password,
                                          db=database,
                                          charset='utf8mb4',
                                          cursorclass=pymysql.cursors.DictCursor)

        print("Successfully Connected!")

    def close(self):
        self.connection.close()
        print("Connection Closed!")

    def print_query(self, query):
        cursor = self.exec_query(query)
        print()
        for row in cursor:
            print(row)

    def exec_query(self, query):
        try:
            with self.connection.cursor() as cursor:
                cursor.execute(query)
                return cursor
        except DatabaseError as e:
            if e.args[1] == '#42000Unknown Database':
                print(e)
            else:
                print(e)

    def gtProtein(self, protein):
        sql = 'SELECT NutritionalDB.Food.Name FROM Food WHERE Food.Protein > ' + str(protein) + ';'
        print()
        print('Food with more than ' + str(protein) + ' grams of protein:')
        self.print_query(sql)

    def treatedBy(self, doctor):
        sql = "SELECT NutritionalDB.Patient.Name FROM NutritionalDB.Patient JOIN Nutritionist " \
              "ON Patient.Doctor = Nutritionist.idNutritionist " \
              "WHERE Nutritionist.FullName = '" + doctor + "';"
        print()
        print('Patients treated by ' + str(doctor) + ':')
        self.print_query(sql)

    def dietsWithMoreFood(self, quantity):
        sql = "SELECT NutritionalDB.Diet.Description as " \
              "'Diets with more than " + str(quantity) + " foods', " \
                                                         "NutritionalDB" \
                                                         ".Nutritionist" \
                                                         ".FullName as " \
                                                         "'Creator' FROM " \
                                                         "NutritionalDB.Diet" \
                                                         " JOIN NutritionalDB" \
                                                         ".Nutritionist ON " \
                                                         "Diet.Creator = " \
                                                         "Nutritionist.idNutritionist " \
                                                         "WHERE " \
                                                         "NutritionalDB.Diet" \
                                                         ".idDiet IN (SELECT " \
                                                         "NutritionalDB.Diet.idDiet FROM NutritionalDB.ListOfFood " \
                                                         "GROUP BY idDiet " \
                                                         "HAVING COUNT(*) > " \
                                                         "" + str(quantity) + ");"

        print()
        print('Diets with more than ' + str(quantity) + ' foods:')
        self.print_query(sql)

    def moreThanAvg(self, column):
        sql = "SELECT NutritionalDB.Food.Name, NutritionalDB.Food." + column + \
              " FROM NutritionalDB.Food" \
              " WHERE NutritionalDB.Food." + column + " > (SELECT AVG(NutritionalDB.Food." \
              + column + ") FROM NutritionalDB.Food);"
        print()
        print('Food with more ' + str(column) + ' than the average:')
        self.print_query(sql)

    def filterByInfoAndOrigin(self, info1, info2, value1, value2, origin):
        sql = "SELECT NutritionalDB.Food.Name FROM NutritionalDB.Food" \
              " JOIN NutritionalDB.TypeOfFood ON Food.TypeOfFood = TypeOfFood.Type" \
              " WHERE TypeOfFood.Origin = '" + origin + \
              "' AND (Food." + info1 + " > " + str(value1) + " OR Food." + info2 + \
              " > " + str(value2) + ");"
        print()
        print('Food with more than ' + str(value1) + ' grams of ' + str(info1) + ' or more than '
              + str(value2) + ' grams of ' + str(info2) + ' from ' + str(origin) + ' origin :')
        self.print_query(sql)


if __name__ == '__main__':
    password = 'YourPassword'
    ndb = NutritionalQuerys('localhost', 'root', password, 'NutritionalDB')
    ndb.gtProtein(20)
    ndb.treatedBy('Pablo Moreno Garcia-Espina')
    ndb.dietsWithMoreFood(10)
    ndb.moreThanAvg('Protein')
    ndb.filterByInfoAndOrigin('Protein', 'Iron', 15, 5, 'animal')
