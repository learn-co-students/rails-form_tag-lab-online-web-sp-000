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
    # Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # redirect_to students_path
    if s = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
      redirect_to students_path
    else
      redirect_to new_student_path
    end
  end

 

end
