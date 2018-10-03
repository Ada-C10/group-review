class Cake < ApplicationRecord
  belongs_to :chef, optional: true

  validates :message, :pickup, presence: true
  validates :size, inclusion: { in: %w(small medium large x-large) }
end
