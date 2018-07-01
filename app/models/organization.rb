class Organization < ApplicationRecord

  def tenant_name
    "organization_#{self.id}"
  end
end
