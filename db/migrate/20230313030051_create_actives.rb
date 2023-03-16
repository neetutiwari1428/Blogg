class CreateActives < ActiveRecord::Migration[7.0]
  def change
    create_table :actives do |t|
      t.string :logo
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
