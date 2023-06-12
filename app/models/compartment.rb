class Compartment < ApplicationRecord
  has_many :implantations, dependent: :destroy
  belongs_to :garden
end
