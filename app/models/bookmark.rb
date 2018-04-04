class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :dish,
             :counter_cache => true

  belongs_to :venue,
             :counter_cache => true

  # Indirect associations

  # Validations

end
