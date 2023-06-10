class ApplicationController < ActionController::Base
   before_action :authenticate_user!, except: [:top]
   before_action :configure_permitted_parameters, if: :devise_controller?



  def after_sign_in_path_for(resource)
   post_images_path
  end

  def after_sign_out_path_for(resource)
    about_path
  end





end
