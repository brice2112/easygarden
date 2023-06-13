class Garden < ApplicationRecord

  has_many :compartments
  belongs_to :user

  has_many :compartments, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :length, presence: true, numericality: { greater_than: 0,  less_than_or_equal_to: 50,  message: "must be between 0 and 50" }
  validates :width, presence: true, numericality: { greater_than: 0,  less_than_or_equal_to: 50,  message: "must be between 0 and 50" }
  validates :location, presence: true

end
