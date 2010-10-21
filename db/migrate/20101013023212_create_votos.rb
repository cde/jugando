class CreateVotos < ActiveRecord::Migration
  def self.up
    create_table :votos do |t|
      t.integer :juego_id

      t.timestamps
    end
  end

  def self.down
    drop_table :votos
  end
end
