


import random

with open('first-names.txt') as f:
    names = f.readlines()

names = [i.strip() for i in names]
sexes = ['m', 'f']
species = ["Dog", "Cat", "Parrot", "Bird", "Ferret", "Cow", "Pig", "Snake", "Turtle", "Lizzard" ]
years = range(2000, 2017, 1)
days = range(1, 31, 1)
months = range(1, 12, 1)


print "#!/bin/bash"

for i in range(2300):
    name = random.choice(names)
    owner_name = random.choice(names)
    spec = random.choice(species)
    sex = random.choice(sexes)
    birth = "-".join(map(str, [random.choice(years), random.choice(months), random.choice(days)]))
    death = "-".join(map(str, [random.choice(years), random.choice(months), random.choice(days)]))
    #print name, owner_name, spec, sex, birth, death
    print "echo \"insert into pet (name, owner, species, sex, birth, death) values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}');\" | mysql -u root -D menagerie --password=notthepassword".format(name, owner_name, spec, sex, birth, death)

    
    
    

