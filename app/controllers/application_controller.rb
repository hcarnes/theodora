class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_organization

  def after_sign_in_path_for(resource)
    tenant_selector_path
  end

  protected

  def current_organization
    @current_organization ||= if current_user && cookies[:selected_organization_id]
      current_user.current_organizations.find(cookies[:selected_organization_id])
    end
  end
end
