class Route < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :railway_stations
  has_many :trains

  before_create :set_name

  private

  def set_name
    self.name ||= "#{railway_stations.first} - #{railway_stations.last}"
  end
end
