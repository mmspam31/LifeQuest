class UserPathsController < ApplicationController

  def show
    @user_paths = UserPathDao.q(params[:id])
  end
end
