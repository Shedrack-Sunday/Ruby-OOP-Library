class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(date, book, _person)
    @date = date
    @book = book
    @person = person
  end
end
