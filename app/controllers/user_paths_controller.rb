class UserPathsController < ApplicationController

  def show
    @user_paths = UserPathDao.q(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_paths }
    end
  end
end
