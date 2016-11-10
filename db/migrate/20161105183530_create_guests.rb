class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.boolean :attend
      t.integer :adult
      t.integer :child

      t.timestamps null: false
    end
  end
end
