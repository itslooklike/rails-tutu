class Train < ApplicationRecord
  validates :number, presence: true
  belongs_to :railway_station, optional: true
  belongs_to :route, optional: true
  has_many :tikets
end
