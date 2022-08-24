class ArreglosController < ApplicationController
  def index
    result = Arreglo.select(:id, :array).all

    render json: result
  end

  def create
    size_array = params[:num].to_i

    if size_array.between?(10, 30)
      result = CreateArray.new(size_array).val_array
      array = Arreglo.new(array: result)

      array.save

      render json: result
    else
      render json: "No esta dentro del rango"
    end
  end

  def show
    array = Arreglo.find(params[:id]).array
    result = ::RangeArray.new(array).val_range

    render json: result
  rescue
    render plain: "No existe registro con ese ID"
  end
end
