class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  has_many :posts, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :comments, :as => :commentable, :dependent => :destroy
  attr_accessible :email, :password, :password_confirmation, :remember_me, :about, :name
  # attr_accessible :title, :body
end
