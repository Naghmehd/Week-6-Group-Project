class Movie < ActiveRecord::Base

  has_many :upvotes

  validates :title, presence: true

  def scores
    upvotes.count + 1
  end
end
