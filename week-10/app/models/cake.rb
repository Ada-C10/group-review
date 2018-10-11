class Cake < ApplicationRecord
  belongs_to :chef, optional: true

  SIZES = %w(small medium large x-large)

  validates :message, :pickup, presence: true
  validates :size, inclusion: { in: SIZES }

  validate :pickup_must_be_in_future

  private

  def pickup_must_be_in_future
    if pickup.past?
      errors.add(:pickup, "must be a date in the future.")
    end
  end
end
