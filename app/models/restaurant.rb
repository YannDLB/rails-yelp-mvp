class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  RESTOTYPES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: RESTOTYPES }
end
