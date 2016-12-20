class User < ApplicationRecord
  has_one :profile
  ROLES = %i[admin moderator author banned]


  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end

  def admin?
    self.role == "admin"
  end

  def guest?
    self.role == "guest"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
