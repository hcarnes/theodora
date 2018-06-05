require 'pry'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_org

  def set_org
    @org = Org.find_by(subdomain: request.subdomain)
  end
end
