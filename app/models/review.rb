class Review < ApplicationRecord
  belongs_to :list

  validates :author, presence: true
  validates :stars, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end
