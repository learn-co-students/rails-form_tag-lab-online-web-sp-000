require 'pry'

class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new  
    # @student = Student.find(params[:id])
  end

  def create
    session[:form_params] = params.inspect
    # binding.pry
    redirect_to new_student_path
  end

end
