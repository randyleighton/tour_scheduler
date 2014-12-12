class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :description
      t.belongs_to :tour, index: true
    end
  end
end
