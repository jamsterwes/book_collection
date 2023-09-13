class User < ApplicationRecord
  # Many->many
  has_many :books
end
