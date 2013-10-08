class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def bodyid
    @bodyid = params[:controller].parameterize
  end

  def bodyclass
    @action = params[:action].parameterize

    if params[:controller] == 'home' && params[:action] == 'index'
      @front = 'front'
    else
      @front = 'not-front'
    end

 #   if current_admin
 #     @admin = 'logged-in'
 #   else
 #     @admin = 'not-logged-in'
 #   end

    @bodyclass = @action + ' ' + @front #+ ' ' + @admin
  end

  helper_method :bodyid
  helper_method :bodyclass


end


