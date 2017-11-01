class User < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable, :validatable
  devise :database_authenticatable, :registerable, :rememberable, :trackable

  validates :email, :name, presence: true, uniqueness: true

  has_many :albums

  def admin?
    self.admin
  end

end