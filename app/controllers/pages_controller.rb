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
    @aut = Auto.all
  end

  def guardar_cliente
    @nombre_completo = params[:nombre_completo]
    @correo_electronico = params[:correo_electronico]
    @edad_usuario = params[:edad_usuario]

    unless @nombre_completo.blank?
      Client.create({
        name: @nombre_completo,
        email: @correo_electronico,
        edad: @edad_usuario
      })
    end

    redirect_to pages_home_path
  end

  def guardar_auto
    @modelo = params[:modelo]
    @marca = params[:marca]
    @kilometros = params[:kilometros]
      unless @modelo.blank?
      Auto.create({
        modelo: @modelo,
        marca: @marca,
        km: @kilometros
      })
    end
    redirect_to pages_x_path
  end


end
