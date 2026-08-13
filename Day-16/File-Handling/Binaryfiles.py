import pickle

data = {"name": "name1", "age": 21}

# Write
with open("data.dat", "wb") as file:
    pickle.dump(data, file)

# Read
with open("data.dat", "rb") as file:
    data = pickle.load(file)

print(data)