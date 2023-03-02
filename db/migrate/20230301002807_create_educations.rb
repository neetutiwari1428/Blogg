class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :university
      t.date :startdate
      t.date :enddate
      t.string :degree

      t.timestamps
    end
  end
end
