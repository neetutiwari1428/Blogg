class CreateGenerals < ActiveRecord::Migration[7.0]
  def change
    create_table :generals do |t|
      t.string :logo
      t.string :name
      t.string :people
      t.string :description

      t.timestamps
    end
  end
end
