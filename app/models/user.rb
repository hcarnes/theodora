class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :org
  accepts_nested_attributes_for :org

  after_initialize :set_org

  private 

  def set_org
    build_org unless org.present?
  end
end
