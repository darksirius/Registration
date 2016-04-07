class StudentsController < ApplicationController

  before_action :set_student, only: [:edit, :update, :show, :destroy]


  def index
    @students = Student.all
  end


  def new
    @student = Student.new
    @nacionalidads = Nacionalidad.all



  end

  def destroy
    @student = Persona.find(params[:id])
    @student.destroy
    flash[:danger] = "Persone suprimer"
    redirect_to students_path

  end

  def edit

  end

  def show

  end


  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "a etait bien enregistre"
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end

  def update

    if @student.update_attributes(student_params)
      flash[:success] = "a etait mis a jour"
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end


  private def set_student
    @student= Student.find(params[:id])

  end


  private def student_params
    params.require(:student).
        permit(:stu_name,
               :stu_lastName,
               :stu_bday,
               :stu_natio_id,
               :stu_dt_id,
               :stu_doc_num,
               :stu_email,
               :stu_disease_id,
               :stu_otherInfo,
               :stu_consul
)
  end
end
