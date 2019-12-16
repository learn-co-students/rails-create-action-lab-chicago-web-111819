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
    fn = params[:first_name]
    ln = params[:last_name]
    @student = Student.create(first_name: fn, last_name: ln)
    redirect_to(student_path(@student))
  end

end
