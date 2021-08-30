class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:facebook]
  rolify
  
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :authorizations, dependent: :destroy
  
  validates :email, uniqueness: { case_sensitive: false }, if: :email_changed?
  
  
  after_create :create_profile

  def self.find_for_oauth(auth)
    FindForOauth.new(auth).call if auth
  end
  
end
