class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.string :logo
      t.string :cntry
      t.string :sales
      t.string :value
      t.string :Bounce

      t.timestamps
    end
  end
end
