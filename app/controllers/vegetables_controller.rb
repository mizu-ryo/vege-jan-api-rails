class VegetablesController < ApplicationController
  before_action :set_vegetable, only: %i[ show update destroy ]

  # GET /vegetables
  # GET /vegetables.json
  def index
    @vegetables = Vegetable.all
    render json: @vegetables
  end

  # GET /vegetables/1
  # GET /vegetables/1.json
  def show
    render json: @vegetable
  end

  # POST /vegetables
  # POST /vegetables.json
  def create
    @vegetable = Vegetable.new(vegetable_params)
    @vegetable.save
    render json: @vegetable
    
  end

  # PATCH/PUT /vegetables/1
  # PATCH/PUT /vegetables/1.json
  def update
    @vegetable.update(vegetable_params)
    render json: @vegetable
  end

  # DELETE /vegetables/1
  # DELETE /vegetables/1.json
  def destroy
    @vegetable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vegetable_params
      params.permit(:name, :good_at, :hp, :power)
    end
end
