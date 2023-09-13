class Book < ApplicationRecord
  # Many->many
  has_many :users, through: :user_books
  has_many :user_books


  # Validate that the book has a title
  validates :title, presence: true
  
  # Validate that the book has a author
  validates :author, presence: true
  
  # Validate that the book has a price
  validates :price, presence: true
  
  # Validate that the book has a published_date
  validates :published_date, presence: true, comparison: {
    less_than_or_equal_to: Date.today
  }
end
