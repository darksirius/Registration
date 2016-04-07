class PersonasController < ApplicationController

  before_action :set_persona, only: [:edit, :update, :show, :destroy]


  def index
    @personas = Persona.all
    @nacionalidads = Nacionalidad.all
  end


  def new
    @persona = Persona.new




  end

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy
    flash[:danger] = "Persone suprimer"
    redirect_to personas_path

  end

  def edit

  end

  def show

  end


  def create
    @persona = Persona.new(persona_params)
        if @persona.save
      flash[:success] = "a etait bien enregistre"
      redirect_to persona_path(@persona)
    else
      render 'new'
    end
  end

  def update

    if @persona.update_attributes(persona_params)
      flash[:success] = "a etait mis a jour"
      redirect_to persona_path(@persona)
    else
      render 'edit'
    end
  end

  private def set_persona
            @persona= Persona.find(params[:id])

  end


  private def persona_params
    params.require(:persona).permit(:nombre, :apelllido, :fechaNacimiento, :teleCelular, :teleParticular, :teleOficina, :numeroDocumento, :email, :profesion, :entreprise, :nacionalidad_id, :dt_id)
  end

end
