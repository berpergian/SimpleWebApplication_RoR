class ApplicationController < ActionController::Base
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      'admins'
    else
      'users'
    end
  end
end
