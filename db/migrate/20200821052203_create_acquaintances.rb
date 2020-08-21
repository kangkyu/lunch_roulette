class CreateAcquaintances < ActiveRecord::Migration[6.0]
  def change
    create_table :acquaintances do |t|
      t.integer :from_id, nil: false
      t.integer :to_id, nil: false
      t.integer :do_you_know, default: 0

      t.timestamps
    end
    add_index :acquaintances, :from_id
    add_index :acquaintances, :to_id
  end
end
