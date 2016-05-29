class MensajeMailer < ActionMailer::Base

  default from: "Plataforma Ecuador Solidario <noreply@ecuadorsolidario.org>"
  default to: "Ecuador Solidario <pelayo@pulpomarketing.com>"

  def new_mensaje(mensaje)
    @mensaje = mensaje

    mail subject: "Mensaje de #{mensaje.nombre}"
  end

end
