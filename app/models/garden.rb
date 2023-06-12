class Garden < ApplicationRecord

  has_many :compartments
  belongs_to :user
  
  has_many :compartments, dependent: :destroy
  belongs_to :user

end
