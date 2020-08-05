class Event < ApplicationRecord
  belongs_to :user
  has_one :type

  validates :type, presence: true
end
