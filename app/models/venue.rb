class Venue < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :nullify

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
