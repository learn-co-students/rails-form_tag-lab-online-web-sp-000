class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = Student.find(params[:id])
  end

  def new
    # binding.pry
  end

  def create
    session[:form_details] = params.inspect
    # Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to new_student_path
  end

end
