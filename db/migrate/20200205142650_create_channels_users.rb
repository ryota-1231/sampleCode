class CreateChannelsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :channels_users do |t|
      t.references :channel, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
