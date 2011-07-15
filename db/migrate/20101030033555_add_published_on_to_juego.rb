class AddPublishedOnToJuego < ActiveRecord::Migration
  def self.up
    add_column :juegos, :published_on, :date
  end

  def self.down
    remove_column :juegos, :published_on
  end
end
