require 'pry'
# School
#   ::new
#     has an empty roster when initialized (FAILED - 1)
#   #add_student
#     is able to add a student (FAILED - 2)
#     is able to add multiple students to a class (grade) (FAILED - 3)
#     is able to add students to different grades (FAILED - 4)
#   #grade
#     is able to retreive students from a grade (FAILED - 5)
#   #sort
#     is able to sort the students (FAILED - 6)


class School 
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end

    end

    def grade(grade)
        roster[grade]
    end

    def sort 
        roster.each_value(&:sort!)

    end

end

