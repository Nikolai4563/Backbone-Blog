class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  belongs_to :post, :counter_cache => true
  attr_accessible :body, :commentable_type, :commentable_id
end