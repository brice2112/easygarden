class Garden < ApplicationRecord
  has_many :compartments, dependent: :destroy
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :length, presence: true, numericality: { greater_than: 0,  less_than_or_equal_to: 50,  message: "must be between 0 and 50" }
  validates :width, presence: true, numericality: { greater_than: 0,  less_than_or_equal_to: 50,  message: "must be between 0 and 50" }
end
