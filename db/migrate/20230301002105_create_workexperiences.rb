class CreateWorkexperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :workexperiences do |t|
      t.string :designation
      t.string :company
      t.date :startdate
      t.date :enddate
      t.text :about

      t.timestamps
    end
  end
end
