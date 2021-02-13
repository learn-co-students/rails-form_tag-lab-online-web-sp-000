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
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])

    # redirect_back fallback_location: { action: "new", id: @student.id }
    redirect_to students_path
    # redirect_to new_student_path
  end

end


# <%= text_field_tag :'student[first_name]', @student.first_name %><br>
# <%= text_field_tag :'student[last_name]', 'hello' %><br>

# module StudentsHelper
#   def book_select(f)
#     options = {}
#     options['Harry Potter'] = 1 unless @a == 1
#     options['Lord of the Rings'] = 2 unless @b == 2
#     f.select :book_id, options
#   end

# end
