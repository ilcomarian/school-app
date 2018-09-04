# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Course.create(name: "asda", total_hours: 23)
# Cohort.create(name:"sasa",start_date:"sasdas", end_date: "sadasd", instructor_id: 1, course: 1  )
require 'faker'
arr =  ["highschool", "college", "masters", "phd"]

arr[rand(0...4)] 
# Instructor.create(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name ,age: rand(22..67),salary: rand(1..100),completed_education: arr[rand(0...4)], cohort_id: rand(1..10))
# Course.create(name: Faker::University.greek_organization, total_hours: rand(20..100))
# Instructor.create(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name ,age: rand(22..67),salary: rand(1..100),completed_education: arr[rand(0...4)], cohort_id: 5)
20.times do
    # Cohort.create(name: Faker::University.greek_organization,start_date: Faker::Date.backward(rand(20..100)) , end_date: Faker::Date.forward(rand(20.100)), instructor_id: rand(1..10), course_id: rand(1..10)  )
    Student.create(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name ,age: rand(4..17), cohort_id: rand(1..10))
end 

git remote add origin https://github.com/ilcomarian/school-app.git