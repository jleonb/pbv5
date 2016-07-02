class MessageMailer < ApplicationMailer
	default from: "WEB <no-responder@portalbeneficios.cl>"
  default to: "SOPORTE <soporte@portalbeneficios.cl>"

  def new_message(message)
    @message = message  
    mail subject: "Mensaje de #{message.rut}"
  end

end