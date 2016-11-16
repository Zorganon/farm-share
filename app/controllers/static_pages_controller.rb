class StaticPagesController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find(current_user)
    end
  end
  
  def farmerdash
    if user_signed_in? && user.type == 'farmer'
      @user = User.find(current_user)
    end
#    @share = User.
  end
  
  def consumerdash
    if user_signed_in? && user.type == 'consumer'
      @user = User.find(current_user)
    end
  end
end
