class StaticPagesController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find(current_user)
      @shares = Share.all
    end
  end
  
  def farmerdash
    if user_signed_in?
      @user = User.find(current_user)
      @shares = Share.where("farmer_id = ?", @user.id)
    else
      redirect_to( root_path )
    end
  end
  
  def consumerdash
    if user_signed_in? && user.farmer == 0
      @user = User.find(current_user)
      @shares = Share.all
    end
  end
  
  
  
end
