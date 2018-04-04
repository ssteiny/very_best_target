class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :cuisine, :presence => true

  validates :name, :presence => true

end
