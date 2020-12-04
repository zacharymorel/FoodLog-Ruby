require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 20, fats: 10, calories: 400)
    assert entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 20, fats: 10)
    assert_not entry.save
  end
end
