class CreateJuegos < ActiveRecord::Migration
  def self.up
    create_table :juegos do |t|
      t.string :titulo
      t.text :descripcion
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :juegos
  end
end
