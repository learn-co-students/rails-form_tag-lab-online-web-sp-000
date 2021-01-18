class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def create
  Student.create(name: params[:student][:first_name],description: params[:post][:description])
  redirect_to student_path(@student)
end

end
