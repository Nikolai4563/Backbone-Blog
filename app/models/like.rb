class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post, :counter_cache => true
  attr_accessible :image_id
  validates :post_id, :uniqueness => { :scope => :user_id }
end
