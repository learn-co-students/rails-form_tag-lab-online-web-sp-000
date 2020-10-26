class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    #implicit rendering
  end

  def create
    session[:form_inputs] = params[:student]
    redirect_to new_student_path
  end

end
