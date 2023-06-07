class Implantation < ApplicationRecord
  belongs_to :compartment
  has_many :vegetables
end
