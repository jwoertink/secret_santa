class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :group_id, null: false
      t.boolean :taken, default: false
      t.timestamps
    end
    
    add_index :participants, :group_id
    add_index :participants, [:group_id, :taken]
  end
end
