class AddSecretSantaIdToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :secret_santa_id, :integer
  end
end
