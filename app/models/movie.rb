class Movie < ActiveRecord::Base

  has_many :upvotes

  validates :title, presence: true


end
