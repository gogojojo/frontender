class Post < ActiveRecord::Base
  belongs_to :day
  belongs_to :user
end
