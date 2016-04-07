class NacionalidadsController < ApplicationController

  def new
    @nacionalidads = Nacionalidad.new

  end

  respond_to :html, :json


  def index
    @nacionalidads = Nacionalidad.all
    respond_with @nacionalidads
    @nacionalidads.persona.build

  end

end