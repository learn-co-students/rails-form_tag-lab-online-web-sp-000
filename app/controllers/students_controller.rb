class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
   
    session[:student] = params.inspect
    # byebug
    redirect_to new_student_path
  end

end
