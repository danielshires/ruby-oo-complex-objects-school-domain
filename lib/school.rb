# code here!

class School
    
    attr_accessor :grade, :student
    attr_reader :name, :roster

    def initialize(name, roster = {})
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end

school = School.new("Bayside High School",)
# puts school.name
# p school.roster
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
# p school.roster
# p school.grade(9)
p school.sort