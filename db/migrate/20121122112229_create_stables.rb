class CreateStables < ActiveRecord::Migration
  def change
    create_table :stables do |t|
      t.integer :number
      t.boolean :window

      t.timestamps
    end
  end
end
