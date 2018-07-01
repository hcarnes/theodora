class Organization < ApplicationRecord
  has_many :organization_users
  has_many :users, through: :organization_users

  after_create :create_tenant

  def tenant_name
    "organization_#{self.id}"
  end

  private

  def create_tenant
    Apartment::Tenant.create(self.tenant_name)
  end
end