class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path , notice: "Mensaje enviado"
    else
      redirect_to new_contact_path , notice: "Error al enviar el mensaje"
    end
  end
    
    private
      def contact_params
        params.require(:contact).permit(:name, :email, :comments)
      end
  
end