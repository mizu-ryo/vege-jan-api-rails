class UserVegetablesController < ApplicationController
  before_action :set_user_vegetable, only: %i[ show update destroy ]

  # GET /user_vegetables
  # GET /user_vegetables.json
  def index
    @user_vegetables = UserVegetable.all
    render json: @user_vegetables
  end

  # GET /user_vegetables/1
  # GET /user_vegetables/1.json
  def show
    render json: @user_vegetable
  end

  # POST /user_vegetables
  # POST /user_vegetables.json
  def create
    @user_vegetable = UserVegetable.new(user_vegetable_params)
    @user_vegetable.save
    render json: @user_vegetable
  end

  # PATCH/PUT /user_vegetables/1
  # PATCH/PUT /user_vegetables/1.json
  def update
    @user_vegetable.update(user_vegetable_params)
    render json: @user_vegetable
  end

  # DELETE /user_vegetables/1
  # DELETE /user_vegetables/1.json
  def destroy
    @user_vegetable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_vegetable
      @user_vegetable = UserVegetable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_vegetable_params
      params.permit(:user_id, :vegetable_id)
    end
end
