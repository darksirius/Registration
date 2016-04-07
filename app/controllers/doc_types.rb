class Doc_typesController < ApplicationController

  def new
    @doc_types = Doc_type.new

  end

  respond_to :html, :json


  def index
    @doc_type = Doc_type.all
    respond_with @doc_types
    @doc_types.persona.build

  end

end