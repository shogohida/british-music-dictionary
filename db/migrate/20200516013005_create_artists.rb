class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :years_active
      t.boolean :separated

      t.timestamps
    end
  end
end
