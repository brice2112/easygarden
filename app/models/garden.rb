class Garden < ApplicationRecord
  has_many :compartments, dependent: :destroy
  belongs_to :user

  attr_accessor :tomate_qty
end
