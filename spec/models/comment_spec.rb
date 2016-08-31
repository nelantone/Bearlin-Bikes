require 'rails_helper'

describe Comment do
  it "should be not valid to have only a rating" do
    expect(Comment.new(rating: 4.0)).not_to be_valid
  end
end