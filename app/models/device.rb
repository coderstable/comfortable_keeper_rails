class Device < ApplicationRecord
  belongs_to :user
  validates :device_name, presence:  { message: "デバイス名が入力されていません"}
  validates :preset_temperature, presence: { message: "設定温度が入力されていません。"},
            numericality: { only_integer: true, greater_than_or_equal_to: 20, less_than_or_equal_to: 30, message: "設定温度は20〜30の範囲で入力して下さい" }
  validates :device_communication, inclusion: { in: [true, false] }
end
