class Chef < ApplicationRecord
  has_many :cakes

  validates :name, presence: true, uniqueness: true
end
