class Cake < ApplicationRecord
  validates :message, :pickup, presence: true

  validates :size, inclusion: { in: %w(small medium large x-large) }
end
