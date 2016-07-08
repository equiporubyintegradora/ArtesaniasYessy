class EmpleadosController < ApplicationController

  def index
    @empleado=Empleado.all
  end

end
