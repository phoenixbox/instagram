class UsersController < ApplicationController
  def index
    if params[:username]
      username = params[:username]
      @user = Instagram.user_search(username).first
      @url = Instagram.user_recent_media(@user.id).first.images.standard_resolution.url
    end
  end
end 
  
