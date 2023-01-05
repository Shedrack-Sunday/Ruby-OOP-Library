require './classroom.rb'

describe Classroom do
  describe '#initialize' do
    it 'Creates a classroom with label containing students' do
      classroom = Classroom.new('Grade 4')
      expect (classroom.label).to eq('Grade 4')
    end
  end

  describe '#add_student' do
    it 'Adds students to a classroom' do
      classroom = Classroom.new('Grade 5')
      added_student = classroom.add_student('Jeffery')
      expect(student.classroom).to eq([classroom])
    end
  end
end

      
