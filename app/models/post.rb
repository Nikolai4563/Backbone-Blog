class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :likes
  #has_many :users, :through => :likes
  belongs_to :user
  attr_accessible :title, :description
  def as_json(*args)
    super({
              :include => {
                  :user => {

                  }
              }
          })
  end
end
