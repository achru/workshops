class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.datetime :starting_at
      t.datetime :finishing_at
      t.string :url
      t.references :user, index: true
      t.references :style, index: true
      t.string :language

      t.timestamps
    end
  end
end
