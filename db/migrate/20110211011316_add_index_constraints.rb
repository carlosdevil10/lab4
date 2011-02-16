class AddIndexConstraints < ActiveRecord::Migration
  def self.up
	add_index :clients, :id, :unique => true
	add_index :clients, :nit, :unique => true
    add_index :products, :id, :unique => true
	add_index :products, :code, :unique => true
	add_index :orders, :id, :unique => true
	add_index :orders, :code, :unique => true

  end

  def self.down
	remove_index :clients, :id
	remove_index :clients, :nit
    remove_index :products, :id
	remove_index :products, :code
	remove_index :orders, :id
	remove_index :orders, :code
  end
end
