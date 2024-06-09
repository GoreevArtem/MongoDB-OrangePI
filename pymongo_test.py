from pymongo import MongoClient

# Подключение к MongoDB
client = MongoClient('mongodb://192.168.0.104:27017/')

# Выбор базы данных
db = client['mydatabase']

# Выбор коллекции
collection = db['mycollection']

# Вставка документа
document = {"name": "John", "age": 30}
collection.insert_one(document)

# Поиск документа
result = collection.find_one({"name": "John"})
print(result)
