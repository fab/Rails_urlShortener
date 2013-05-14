class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long, :unique => true
      t.string :short, :unique => true
      t.integer :click_count, :default => 0
      t.timestamps
    end
  end
end
