class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def new
    
  end
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def create
    
  end

  private
    def set_student
      @student = Student.find(params[:id])  
    end

end
