class Vegetable < ApplicationRecord
  has_many :implantations
  has_many :vegetables, through: :synergies

  has_one_attached :photo

  def synergies
    Synergy.where("first_vegetable_id = :id OR second_vegetable_id = :id", id: id)
  end

end
