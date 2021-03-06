class UsersController < ApplicationController
  include ActiveModel::Serializers::JSON

  def index
    @users = User.where(params[:id])
    render :json => @users, each_serializer: UserSerializer
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

end
