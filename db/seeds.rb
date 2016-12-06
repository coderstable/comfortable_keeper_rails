# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Device.create(id: 1, device_name: "エアコン", preset_temperature: 26, device_communication: "connecting", mac_address: nil)
Device.create(id: 2, device_name: "照明", preset_temperature: nil, device_communication: "disconnect", mac_address: nil)
