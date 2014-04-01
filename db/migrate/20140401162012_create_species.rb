class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :name, :string
    end
    create_table :sightings do |t|
      t.column :species_id, :int
      t.column :datetime, :datetime
      t.column :region_id, :int
    end
    create_table :regions do |t|
      t.column :name, :string
    end
  end
end
