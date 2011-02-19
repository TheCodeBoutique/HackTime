class UsersController < ApplicationController
respond_to :json

def index
   respond_with(@user = User.all)
end

def show
  respond_with(@user = User.find(params[:id]))
end

def create
    respond_with(@user = User.create(:description => params[:description], 
    :keepMeLoggedIn => params[:keepMeLoggedIn],
    :FT => params[:FT], 
    :number => params[:number]))
end

def update
    @user = User.find(params[:id])
    @user.description = params[:description]
    @user.number = params[:number]
    @user.keepMeLoggedIn = params[:keepMeLoggedIn]
    @user.order = params[:order]
    @user.save
    respond_with(@user)
end

def destroy
     @user = User.find(params[:id])
     @user.destroy
     render(:nothing => true, :status => :ok)
   end
end
