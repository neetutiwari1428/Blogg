class CreateWorkexperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :workexperiences do |t|
      t.string :designation
      t.string :company
      t.date :start
      t.date :end
      t.text :details

      t.timestamps
    end
  end
end
