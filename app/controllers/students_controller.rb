class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def new
   render 'new' 
  end
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student
  end

  private
    def set_student
      @student = Student.find(params[:id])  
    end

end
