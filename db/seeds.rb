# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tom = Teacher.create!(name: "Mr. Tom", email: "tom@school.com", password: "pword")
norman = Teacher.create!(name: "Mrs. Norman", email: "norman@school.com", password: "normanteacher")

ricky = Student.create!(name: "Ricky", email: "ricky@student.com", password: "pword")

ed = Parent.create!(name: "Ed", email: "ed@parent.com", password: "pword", student_id: 1)

tom.students << ricky

ricky.parents << ed

tom.save
ricky.save
