class Product < ActiveRecord::Base
	belogs_to :orders
	has_and_belongs_to_many :suppliers
	



end
