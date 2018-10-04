class Chef < ApplicationRecord
  has_many :cakes

  validates :name, presence: true, uniqueness: true

  def assign!(cake)
    cakes << cake
  end
end
