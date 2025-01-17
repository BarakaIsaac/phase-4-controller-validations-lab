class Post < ApplicationRecord
  validates :title, presence: true
  validates :category, inclusion: {in:  ['Fiction', 'Non-Fiction'], message: "%{value} is not a valid category" }
  validates :content, length: { minimum: 100}
end
