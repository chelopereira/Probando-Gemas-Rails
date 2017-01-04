class MensajeMailer < ApplicationMailer
	default from: "probandocorreo87@gmail.com"

	def nuevo_mensaje (message)
		@message = message

		mail subject: "Mensaje de #{mensaje.name}"
		mail (to: @message.email)
	end
end
