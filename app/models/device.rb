class Device < ApplicationRecord
  belongs_to :user
  validates :preset_temperature, presence: true,
            numericality: { only_integer: true, greater_than: 20, less_than: 30 }
  validates :device_name, presence: true
end
