class TenantSelectorController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def create
    org = Organization.find(params[:id])
    cookies[:selected_organization_id] = org.id

    redirect_to root_path
  end
end
