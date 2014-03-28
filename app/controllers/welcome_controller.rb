class WelcomeController < ApplicationController
	before_filter :authenticate_user!
  def index
  end

  def search
   post = Post.find_by_title(params[:q])
  end	
end
