class School
  def initialize
    @data = Hash.new([])
  end

  def students(grade)
    @data[grade].sort
  end

  def add(name, grade)
    @data[grade] += [name]
  end

  def students_by_grade
    grade_students = @data.map do |grade, students|
      {
        grade:    grade,
        students: students.sort
      }
    end
    grade_students.sort_by { |a| a[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
