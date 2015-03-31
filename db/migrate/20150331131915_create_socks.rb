class CreateSocks < ActiveRecord::Migration
  def change
    create_table :socks do |t|
      t.string :brand
      t.string :style

      t.timestamps null: false
    end
  end
end
