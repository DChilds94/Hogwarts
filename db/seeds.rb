require_relative("../models/student.rb")
require_relative("../models/houses.rb")

House.delete_all
Student.delete_all()

house1 = House.new({
  "name" => "Griffindor"
  })
house1.save()

house2 = House.new({
  "name" => "Ravenclaw"
  })
house2.save()

house3 = House.new({
  "name" => "Slytherin"
  })
house3.save()

house4 = House.new({
  "name" => "Hufflepuff"
  })
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => house1.id,
  "age" => 11
})
student1.save()

student2 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => house2.id,
  "age" => 13
})
student2.save()
