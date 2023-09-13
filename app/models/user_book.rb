class UserBook < ApplicationRecord
  # Associative entity
  belongs_to :user
  belongs_to :book
end
