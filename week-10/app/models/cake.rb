class Cake < ApplicationRecord
  belongs_to :chef, optional: true

  SIZES = %w(small medium large x-large)

  validates :message, :pickup, presence: true
  validates :size, inclusion: { in: SIZES }
end
