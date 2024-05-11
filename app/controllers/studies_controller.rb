class StudiesController < ApplicationController

  def new
  end
  
  def calculate
    @time = params[:time].to_i
    @burned_calorie = @time * 0.0295
    @foods = Food.where('calorie <= ?', @burned_calorie)
    render 'calculate'
  end
end
