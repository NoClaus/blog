class Post < ApplicationRecord
  has_one :user
  validates :title,  presence: true, uniqueness: true
  validates :description, presence: true , length: { :minimum => 50}
  validates :thumbnail, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                        size: { less_than: 150.kilobytes , message: 'is not given between size' }
                        # dimension: { width: 1200, height: 639, message: 'has wrong image size' }
                        
  has_rich_text :description
  has_one_attached :thumbnail
  
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  enum status: { draft: "Draft", published: "Published" }

end

  


 

