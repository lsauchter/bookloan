class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.text :description
      t.integer :isbn
      t.string :state, null: false
      t.references :libraries, null: false, foreign_key: true
      t.references :loaned_library, foreign_key: { to_table: 'libraries' }
      t.timestamps
    end
  end
end
