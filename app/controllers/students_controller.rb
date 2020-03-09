
class StudentsController < ApplicationController
  before_action :set_student, only: :show #helper saving you work by using helper set below

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    #byebug
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end
