class InscriptionsController < ApplicationController
 
  def index
    @personas = Persona.all
    @nacionalidads = Nacionalidad.all
  end


  def new
    @persona = Persona.new




  end

end