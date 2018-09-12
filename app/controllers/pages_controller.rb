class PagesController < ApplicationController
  skip_authorization_check
  before_action :authenticate_user!
  def dashboard
     unless current_user.admin?
       # flash[:alert] = "No estás autorizado para ver el dashboard"
       redirect_to posts_path, alert: 'No tienes los permisos necesarios para acceder a esta página'
     end

     @users = User.all

  end



end
