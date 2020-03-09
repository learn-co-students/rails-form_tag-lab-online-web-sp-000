class StudentsController < ApplicationController
  before_action :set_student
  def set_student
    @student = Student.find(params[:id])
  end
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
