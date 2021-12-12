class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: users }
  end
  
  def show
    @user = User.find(params[:id])
    render json: { data: @user }
  end
  
  def show_users_ranking
    users_ranking = User.all.order(point: "DESC")
    render json: {data: users_ranking}
  end
  
  def edit_user_point
    @user = User.find(edit_user_point_params[:user_id])
    jan = edit_user_point_params[:jan]
    cpu = edit_user_point_params[:cpu]
    result = ""
    if jan == cpu
      @user.point = @user.point + 1
      result = "draw"
    elsif jan == 1 && cpu == 2
      @user.point = @user.point + 3
      result = "win"
    elsif jan == 2 && cpu == 3
      @user.point = @user.point + 3
      result = "win"
    elsif jan == 3 && cpu == 1
      @user.point = @user.point + 3
      result = "win"
    elsif jan == 1 && cpu == 3
      @user.point = @user.point - 2
      result = "lose"
    elsif jan == 2 && cpu == 1
      @user.point = @user.point - 2
      result = "lose"
    elsif jan == 3 && cpu == 2
      @user.point = @user.point - 2
      result = "lose"
    end
    @user.save!
    render json: { data: {point: @user.point, result: result} }
  end

  private
  
    def edit_user_point_params
      params.permit(:user_id, :jan, :cpu)
    end

end
