class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "created_by",
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :bookmarks,
             :source => :venue

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
