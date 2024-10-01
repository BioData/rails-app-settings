class CreateAppSettings < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table :app_settings do |t|
      t.string  :var,        null: false
      t.text    :value,      null: true
      t.timestamps
    end

    add_index :app_settings, %i(var), unique: true
  end

  def self.down
    drop_table :app_settings
  end
end
