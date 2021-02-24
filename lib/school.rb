# code here!
require 'pry'

class School
    attr_accessor :roster, :name
def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student, grade)
    if @roster[grade]
        @roster[grade] << student
    else
        @roster[grade] = [student]
    end
end
def grade(grade)
    @roster[grade]
end
def sort
    sort_students = {}
    @roster.sort.each do |grade, names_arr|
        sort_students[grade] = (names_arr.sort)
    end
    sort_students 
end

end
