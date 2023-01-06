#!/usr/bin/env ruby
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require 'json'

CHOICES = {
  1 => :list_books,
  2 => :list_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_rentals,
  7 => :break
}.freeze

class App
  def save_persons
    File.open('person.json', 'w') do |file|
      persons = @person.each_with_index.map do |person, index|
        { class: person.class, age: person.age, name: person.name,
          specialization: (person.specialization if person.instance_of?(Teacher)),
          parent_permission: person.parent_permission, index: index, id: person.id }
      end
      file.write(JSON.generate(persons))
    end
  end

  def save_books
    File.open('books.json', 'w') do |file|
      books = @books.each_with_index.map do |book, index|
        {
          title: book.title, author: book.author, index: index
        }
      end
      file.write(JSON.generate(books))
    end
  end

  def save_rentals
    File.open('rentals.json', 'w') do |file|
      rentals = @rentals.each_with_index.map do |rental, _index|
        {
          date: rental.date, book_index: @books.index(rental.book),
          person_index: @person.index(rental.person)
        }
      end
      file.write(JSON.generate(rentals))
    end
  end

  def save_data
    save_persons
    save_books
    save_rentals
  end

  def read_rentals
    return [] unless File.exist?('rentals.json')

    rentals_json = JSON.parse(File.read('rentals.json'))
    rentals_json.map do |rental|
      Rental.new(rental['date'], @person[rental['person_index']], @books[rental['book_index']])
    end
  end

  def question
    puts 'Welcome to School library App!'
    puts "Please choose an option by entering a number:
      1- List all books.
      2- List all people.
      3- Create a person.
      4- Create a book.
      5- Create a rental.
      6- List all rentals for a given person id.
      7- Exit."
  end

  def initialize
    @books = read_books
    @person = read_persons
    @rentals = read_rentals
  end

  def select_option
    loop do
      question
      option = gets.chomp.to_i
      action = CHOICES[option]

      if action == :break
        break
      elsif action
        send(action)
      else
        puts 'Invalid number, please try again!'
      end
    end
  end

  def create_book
    print 'Title:'
    title = gets.chomp

    print 'author:'
    author = gets.chomp

    @books.push(Book.new(title, author))

    puts 'Book created successfully '
  end

  def list_people
    @person.each { |per| puts "[#{per.class}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}" }
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [input the number]'
    num = gets.chomp.to_i

    print 'age:'
    age = gets.chomp.to_i

    print 'Name:'
    name = gets.chomp

    case num
    when 1
      print 'Has parent permission? [y/n]:'
      parent_permission = gets.chomp
      parent_permission = parent_permission == 'y'
      @person.push(Student.new(age, name, parent_permission: parent_permission))
    when 2
      print 'Specialization:'
      specialization = gets.chomp
      @person.push(Teacher.new(age, specialization, name))
    else
      puts 'Invalid number, please enter number again!'
    end
    puts 'Person created successfully '
  end

  def create_rental
    puts 'Select a book from the following list by number '
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_num = gets.chomp
    book_num = book_num.to_i

    puts 'Select a person from the following list by number (not id)'
    @person.each_with_index do |per, index|
      puts "No: #{index}, [#{per.class}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end
    person_num = gets.chomp
    person_num = person_num.to_i

    print 'Date:'
    date = gets.chomp.to_i

    @rentals.push(Rental.new(date, @person[person_num], @books[book_num]))
    puts 'Rental Created successfully'
  end

  def list_rentals
    print 'Id of person:'
    id_person = gets.chomp.to_i

    puts 'Rentals'
    @rentals.each do |rental|
      puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author} " if rental.person.id == id_person
    end
  end
end
