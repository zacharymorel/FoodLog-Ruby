class Entry < ApplicationRecord
  validates :calories, :proteins, :carbohydrates, :fats, :meal_type, presence: true

  def day
    created_at.strftime('%b %e, %Y')
  end
end