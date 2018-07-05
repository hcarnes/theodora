Warden::Manager.before_logout do |user,auth,opts|
  auth.response.delete_cookie "selected_organization_id"
end