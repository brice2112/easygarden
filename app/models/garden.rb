class Garden < ApplicationRecord
  has_many :compartments
  belongs_to :user

end
