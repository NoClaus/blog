class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify
  
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
  
  
  after_create :create_profile
end
