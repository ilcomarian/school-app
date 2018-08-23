# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Course.create(name: "asda", total_hours: 23)
# Cohort.create(name:"sasa",start_date:"sasdas", end_date: "sadasd", instructor_id: 1, course: 1  )
Instructor.create(first_name: "sa",last_name: "aas",age: 26 ,salary: 200,completed_education: 'asdas')

 
  
# class CreateInstructors < ActiveRecord::Migration[5.2]
#     def change
#       create_table :instructors do |t|
#         t.string :first_name
#         t.string :last_name
#         t.integer :age
#         t.integer :salary
#         t.string :completed_education
#         t.timestamps
#       end
#     end
#   end
  

# class CreateStudents < ActiveRecord::Migration[5.2]
#     def change
#       create_table :students do |t|
#         t.string :first_name
#         t.string :last_name
#         t.integer :age
#         t.integer :cohort_id
#         t.timestamps
#       end
#     end
#   end
  
