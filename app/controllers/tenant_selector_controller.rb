class TenantSelectorController < ApplicationController
  def index
    @organizations = current_user.organizations
  end

  def create
    org = current_user.organizations.find(params[:id])
    select_tenant(org)

    redirect_to organization_path(org)
  end
end
