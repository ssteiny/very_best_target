class Dish < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :cuisine, :presence => true

  validates :name, :presence => true

end
