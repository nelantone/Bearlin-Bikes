class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :body, presence: true
  validates :rating, numericality: { only_integer: true }

  after_create_commit { CommentUpdateJob.perform_later(self, @user) }

  scope :rating_desc, -> { order(rating: :desc) }
  self.per_page = 3
end
