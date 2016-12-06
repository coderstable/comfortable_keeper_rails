class Device < ApplicationRecord
  belongs_to :user
  validates :preset_temperature, numericality: { only_integer: true, greater_than: 10, less_than: 40 }
end
