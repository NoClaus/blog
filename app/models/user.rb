class User < ApplicationRecord
  rolify
  
  has_many :post
end
