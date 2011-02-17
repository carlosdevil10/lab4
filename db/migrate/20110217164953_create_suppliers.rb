class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
	  t.integer :id
	  t.text :name
	  t.text :address
      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
