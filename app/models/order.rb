class Order < ActiveRecord::Base
belongs_to :product

	def boolean createOrder(clientNit, productCode)
		Cliente = client.where(:nit => clientNit).first
		Product = product.where(:code => productCode).fisrt
		if((Cliente == nil)|(Producto == nil))
			puts "Cliente Inexistente"
			return false
		else 
			ordenota = order.new
			ordenota.code=productCode
			ordenota.client_id = Cliente.id
			ordenota.date = Time.now
			ordenota.amount = 1
			ordenota.save
		end
	end
end
