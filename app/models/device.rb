class Device < ApplicationRecord
  belongs_to :user
  validates :preset_temperature, presence: true,
            numericality: { only_integer: true, greater_than: 20, less_than: 30, message: "設定温度は20〜30の範囲で入力して下さい" }
  validates :device_name, presence: true
  validates :preset_temperature, presence: { message: "温度設定を入力して下さい"}
  validates :device_name, presence: { message: "デバイス名を入力して下さい"}
end
