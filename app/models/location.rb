class Location < ApplicationRecord
  scope :wings, -> { where(item: "Wing") }
  scope :boxes, -> { where(item: "Box") }
  def self.import(file)
    require "csv"
    CSV.foreach(file.path, headers: true) do |row|
      location_hash = Location.new
      location_hash.code = row[0]
      location_hash.warehouse = row[1]
      location_hash.section = row[2]
      location_hash.item = row[3]
      location_hash.save
    end
  end
end

# code,warehouse,section,item
