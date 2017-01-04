class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		
		if @message.valid?
			MensajeMailer.nuevo_mensaje(@message).deliver
			redirect_to contact_path, notice: "Tu mensaje ha sido enviado"
		else
			flash[:alert]= "Un error ha ocurrido al enviar el mensaje"
			render :new
		end
	end

private
	def message_params
		params.require(:message).permit(:name, :email, :content)
	end
end
