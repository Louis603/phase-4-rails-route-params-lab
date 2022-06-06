class StudentsController < ApplicationController

  def index
    students = Student.all.where(last_name: params[:name]).or(Student.all.where(first_name: params[:name]))
    # students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student

  end

  # def query
  #   byebug
  # end

  # Student.all.where(last_name: "Kirby").or(Student.all.where(first_name: "Kirby"))
end
