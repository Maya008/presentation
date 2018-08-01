class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :Username, unique: true
      t.text :Bio

      t.timestamps
    end
  end
end
