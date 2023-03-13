class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    # Returns a list of all students with their grades ordered by their grade
    def grades
        @students = Student.order(grade: :desc)
        render json: @students
    end

    # Return student with the highest grade
    def highest_grade
        @student = Student.order(grade: :desc).first
        render json: @student
    end
end
