class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    binding.pry
    @student = Student.find(params[:id])
    @student.update(if @student.active == true ? active = false : active = true)
    redirect_to student_path(@student)
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
