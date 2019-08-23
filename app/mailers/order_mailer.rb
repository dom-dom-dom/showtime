class OrderMailer < ApplicationMailer


	def order_confirmation(order)
		@order = order
		email_with_name = %("#{@order.name}" <#{@order.email}>)
		mail(to: email_with_name, subject: 'Thanks for your order')
	end




end
