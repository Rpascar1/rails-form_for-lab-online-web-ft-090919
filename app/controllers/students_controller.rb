class StudentsController < ApplicationController

before_action :set_student, only: [:show,:edit,:update]

  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end



  def create
    @student =  Student.create(student_params)
    redirect_to student_path(@student)
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name,:last_name)
  end

end