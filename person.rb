require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './book'
require './rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Math.floor(Math.random * 10)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def add_rental(book)
    @rentals.push(book)
    rentals.person = self
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
