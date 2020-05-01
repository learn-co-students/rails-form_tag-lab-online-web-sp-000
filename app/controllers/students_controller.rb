class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
  #   @student = Student.find(params[:id])
    first = params[:student][:first_name]
    last = params[:student][:last_name]
    @student = Student.create!(first,last)
    redirect_to new_student_path
  end

end
