class Favorite < ApplicationRecord
  belongs_to :user
  has_many :roasters, dependent: :destroy
end
