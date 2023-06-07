class Compartment < ApplicationRecord
  has_many :implantations
  belongs_to :garden
end
