class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  
  has_many :comments
  
  MAX_NO_OF_WORDS_IN_INDEX = 20
end
