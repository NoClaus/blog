class Profile < ApplicationRecord
  belongs_to :user
  
  
  validates :first_name, length: { :minimum => 2}
  validates :last_name, length: { :minimum => 2}
  validates :biography, length: { :minimum => 2}
  
  
  
  validates :avatar, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                        size: { less_than: 150.kilobytes , message: 'is not given between size' }
                        
  has_one_attached :avatar
end
