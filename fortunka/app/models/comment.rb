class Comment < ActiveRecord::Base
  belongs_to :fortune
  validates :author, :presence => true
  validates :body, :presence => true
end

