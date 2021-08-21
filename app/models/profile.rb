class Profile < ApplicationRecord
  belongs_to :user
  
  has_one_attached :avatar
  
  validates :avatar, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                        size: { less_than: 150.kilobytes , message: 'is not given between size' }
end
