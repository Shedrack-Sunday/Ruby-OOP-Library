require './classroom'

describe Classroom do
  describe '#label' do
    it 'Creates a classroom with label containing students' do
      classroom = Classroom.new('Secondary')
      expect(classroom.label).to eq('Secondary')
    end
  end

  describe '#add_student' do
    it 'Adds students to a classroom' do
      classroom = Classroom.new('Grade 5')
      expect(classroom.students).to eq([])
    end
  end
end
