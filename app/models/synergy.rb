class Synergy < ApplicationRecord
  belongs_to :first_vegetable, class_name: "Vegetable", foreign_key: "first_vegetable_id"
  belongs_to :second_vegetable, class_name: "Vegetable", foreign_key: "second_vegetable_id"

  scope :for_vegetable, ->(id) { where("first_vegetable_id = ? OR second_vegetable_id = ?", id, id)}
end
