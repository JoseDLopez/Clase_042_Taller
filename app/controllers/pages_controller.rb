class PagesController < ApplicationController
  def home
  	@nombre_completo = params[:nombre_completo]
  	@correo_electronico = params[:correo_electronico]
  	@edad_usuario = params[:edad_usuario]
    @clientes = Client.all
  end

  def index
  end

  def about
  end

  def x
  end

  def guardar_cliente
    @nombre_completo = params[:nombre_completo]
    @correo_electronico = params[:correo_electronico]
    @edad_usuario = params[:edad_usuario]

    Client.create({
      name: @nombre_completo,
      email: @correo_electronico,
      edad: @edad_usuario
      })

    redirect_to pages_home_path
  end


end
