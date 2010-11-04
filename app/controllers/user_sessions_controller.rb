class UserSessionsController < ApplicationController
def new
  @user_session = UserSession.new
end
  def create
	@user_session = UserSession.new params[:user_session]
	if @user_session.save
	  flash[:notice] = 'sign in successful!'
	  redirect_to articles_path
	else
	  render 'new'
	end
  end
  def destroy
  current_user_session.destroy
  redirect_to sigin_path
end
end
