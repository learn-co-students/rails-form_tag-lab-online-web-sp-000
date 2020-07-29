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
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
     redirect_to students_path(@student)
  end

end

#modified config/routes.rb
#modified students_controller
#modified views/new.html.erb
#added seed data
