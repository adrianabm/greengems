class User < ApplicationRecord
  has_one :profile

  def has_profile?
    profile.present?
  end

  def full_nameπ
    profile.full_name
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
