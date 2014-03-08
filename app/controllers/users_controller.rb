class UsersController < ApplicationController
  def index
  	@users = User.all
    @user = User.new
  end

  def create
  @user = User.new(params[:user].permit(:name))
 
  respond_to do |format|
    if @user.save
      format.html { redirect_to @user, notice: 'User was successfully created.' }
      format.js   {}
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: "new" }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

def list_each_user
  @user = User.find(params[:id])
end  

end
