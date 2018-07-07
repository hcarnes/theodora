class TenantSelectorController < ApplicationController
  def index
    @organizations = current_user.organizations
  end

  def create
    org = current_user.organizations.find(params[:id])
    session[:selected_organization_id] = org.id

    redirect_to root_path
  end
end
