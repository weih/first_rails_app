class CreateOrcs < ActiveRecord::Migration
  def change
    create_table :orcs do |t|
      t.string :name
      t.integer :lv
      t.string :weapon

      t.timestamps
    end
  end
end
