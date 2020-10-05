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
    redirect_to new_student_path(
      :first_name => params[:student][:first_name],
      :last_name => params[:student][:last_name]
    )
  end
  
end
