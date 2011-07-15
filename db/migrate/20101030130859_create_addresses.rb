class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.belongs_to :user
      t.string :street
      t.string :city
      t.string :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
