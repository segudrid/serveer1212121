class ContactMailer < ActionMailer::Base
  default to: 'segudrid@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Solicitud en forma de contactos')
  end
end