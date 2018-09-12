class UsersController < ApplicationController
  skip_authorization_check

  load_and_authorize_resource

  def destroy
      @user.destroy
  end

  def make_admin
    @user.admin!
    redirect_to pages_dashboard_path
  end

end
