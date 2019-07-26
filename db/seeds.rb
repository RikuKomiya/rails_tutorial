# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  n = 1
  course_name = "例講義#{n}"
  rand = rand(1..5)
  m = rand(1)
  course = Course.create(course_name:course_name,period: rand,wday: rand,
                sem: m,professor: "professor#{n}")

end