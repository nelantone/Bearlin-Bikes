class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  def highest_rating_comment
    comments.rating_desc.first
  end

  def rest_of_comments
    comments.rating_desc.drop(1)
  end
end
