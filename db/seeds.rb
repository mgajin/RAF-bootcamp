# Default database data
#
# rake db:drop:all to delete all data
# rails db:migrate to create database
# rails db:seed to seed data

subjects = Subject.create([
    { name: 'Script Languagues' },
    { name: 'Web Development' },
    { name: 'Android Development' },
    { name: 'Object Oriented Programming' },
    { name: 'C Programming' },
    { name: 'Operating Systems' },
    { name: 'Algebra' },
    { name: 'Machine Learning' },
    { name: 'Deep Learning' }
])

professors = Professor.create([
    { first_name: 'Milos', last_name: 'Radenkovic' },
    { first_name: 'Milan', last_name: 'Vidakovic' },
    { first_name: 'Nemanja', last_name: 'Zirojevic' },
    { first_name: 'Bojana', last_name: 'Dimic' },
    { first_name: 'Stevan', last_name: 'Milenkovic' },
    { first_name: 'Jelena', last_name: 'Jovanovic' },
    { first_name: 'Nemanja', last_name: 'Ilic' }
])

users = User.create([
    { first_name: 'Marko', last_name: 'Gajin', username: 'mgajin', password: 'password' }
])