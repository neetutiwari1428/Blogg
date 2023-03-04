class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :university
      t.date :start
      t.date :end
      t.string :degree

      t.timestamps
    end
  end
end
