class TenantSelectorController < ApplicationController
  def index
    @organizations = Organization.all
  end
end
