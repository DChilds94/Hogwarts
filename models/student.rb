
require("pry-byebug")
require_relative("../db/sql_runner.rb")

class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :house, :age

  def initialize(options)
    @id = options["id"].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i
  end

  def self.map(student_data)
    return student_data.map {|student| Student.new(student)}
  end


  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ($1, $2, $3, $4) RETURNING id = $5"
    values = [@first_name, @last_name, @house, @age, @id]
    students = SqlRunner.run(sql, values)
    @id = students.first["id"].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM students"
    values = []
    students = SqlRunner.run(sql, values)
    result = Student.map(students)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student.first)
    return result
  end




end #end of class
binding.pry
nil
