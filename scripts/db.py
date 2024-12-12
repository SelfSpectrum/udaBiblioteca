from pymysql import connect
from enum import Enum
class OrderBy(Enum):
    ASC = 0
    DESC = 1
class DB():
    def __init__(self, host : str = 'localhost', user : str = 'root', password : str = '', database : str = '') -> None:
        try:
            self.connection = connect(
                host = host,
                user = user,
                password = password,
                database = database)
            self.cursor = self.connection.cursor()
            print('Connected Succesfully!')
        except:
            try:
                self.connection = connect(
                    host = host,
                    user = user,
                    password = password)
                self.cursor = self.connection.cursor()
                self.cursor.execute(f'CREATE DATABASE {database}')
                self.connection.commit()
                self.cursor.close()
                self.connection.close()
                print(f'{database} created!')
                #Connect to the newly created DB
                self.connection = connect(
                    host = host,
                    user = user,
                    password = password,
                    database = database)
                self.cursor = self.connection.cursor()
                print('Connected Succesfully!')
                #Create DB tables and load stuff
                with open('db.sql') as dbData:
                    for command in dbData.read().split(';'):
                        if command.strip() != '':
                            print(f'Executing:\n{command}')
                            self.cursor.execute(command)
                with open('insert.sql') as dbData:
                    for command in dbData.read().split(';'):
                        if command.strip() != '':
                            print(f'Executing:\n{command}')
                            self.cursor.execute(command)
                self.connection.commit()
            except ConnectionError as e:
                print(e)
    def DropDatabase(self, database):
        try:
            self.cursor.execute(f'DROP DATABASE {database}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
    def CreateTable(self, table : str = '', data : str = ''):
        try:
            data = f'({",".join(data.split(","))})'
            self.cursor.execute(f'CREATE TABLE {table} {data}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
    def DropTable(self, table):
        try:
            self.cursor.execute(f'DROP TABLE {table}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
    def InsertTable(self, table : str, column : str, values : list):
        try:
            if column != '': column = f'({",".join(column.split(" "))})'
            values = [f'{i}' if not isinstance(i, str) else f'"{i}"' for i in values]
            data = f'({",".join(values)})'
            self.cursor.execute(f'INSERT INTO {table} {column} VALUES {data}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
    def Select(self, table : str, column : str = '', fetch : int = 1, where : str = '', orderBy : int = OrderBy.ASC, orderByColumn : str = ''):
        try:
            if column == '': column = '*'
            else: column = f'{",".join(column.split(" "))}'
            if where != '': where = f'WHERE {where}'
            if orderByColumn != '': orderByColumn = f'ORDER BY {",".join(orderByColumn.split(" "))} {orderBy.name}'
            command = f'SELECT {column} FROM {table} {where} {orderByColumn}'
            print(command)
            self.cursor.execute(command)
            if fetch < 1:
                return self.cursor.fetchall()
            elif fetch == 1:
                return self.cursor.fetchone()
            elif fetch > 1:
                return self.cursor.fetchmany(fetch)
        except Exception as e:
            print(e)
        return None
    def UpdateSet(self, table : str, column : str, values : list, where : str):
        try:
            if column != '': 
                data = [f'{j} = {k}' for j, k in zip(column.split(" "), [f'{i}' if not isinstance(i, str) else f'"{i}"' for i in values])]
                data = f'{",".join(data)}'
            if where != '': where = f'WHERE {",".join(where.split(","))}'
            self.cursor.execute(f'UPDATE {table} SET {data} {where}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
    def DeleteTable(self, table : str, where : str = ''):
        try:
            if where != '': where = f'WHERE {",".join(where.split(","))}'
            self.cursor.execute(f'DELETE FROM {table} {where}')
            self.connection.commit()
        except Exception as e:
            print(e)
        return self
def Main():
    name = 'udaBibRefs'
    db = DB(database = name)
    print(db.Select(table = 'Users', fetch = -1))
    #db.DropDatabase(name)
if __name__ == '__main__': Main()
