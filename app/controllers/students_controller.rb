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
    #  Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # puts params.inspect
    session[:student] = params
    # binding.pry
    redirect_to new_student_path
  end

end
