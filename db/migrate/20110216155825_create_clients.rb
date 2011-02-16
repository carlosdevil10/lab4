class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
	  t.integer :id
	  t.text :name
	  t.text :address
      t.timestamps
	  t.integer :nit
    end
  end

  def self.down
    drop_table :clients
  end
end
