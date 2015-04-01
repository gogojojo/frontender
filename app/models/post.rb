class Post < ActiveRecord::Base
  belongs_to :day
  belongs_to :user
  has_many :comments

  validates_presence_of :title, :url, :description
end
