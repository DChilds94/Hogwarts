require_relative("../db/sql_runner.rb")

class House

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options["id"].to_i
    @name = options['name']
  end


  def self.map(house_data)
    return house_data.map {|house| House.new(house)}
  end


  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING id"
    values = [@name]
    houses = SqlRunner.run(sql, values)
    @id = houses.first["id"].to_i
  end

  def self.delete_all
    sql = "SELECT * FROM houses"
    SqlRunner.run(sql)
  end

end
