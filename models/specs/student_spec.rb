require('minitest/autorun')

require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def setup()
    @student1 = Student.new(
      {
        "first_name" => "Harry",
        "last_name" => "Potter",
        "house" => "Griffindor",
        "age" => 11
      }
    )
  end

  def test_get_first_name()
    assert_equal("Harry", @student1.first_name)
  end

  def test_get_last_name()
    assert_equal("Potter", @student1.last_name)
  end

  def test_get_house()
    assert_equal("Griffindor", @student1.house)
  end
  def test_get_age()
    assert_equal(11, @student1.age)
  end






end #end of class
