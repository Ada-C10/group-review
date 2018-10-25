class Chef < ApplicationRecord
  has_many :cakes

  validates :name, presence: true, uniqueness: true

  def assign!(cake)
    raise "cake already assigned" if cake.assigned?

    cakes << cake
  end
end
