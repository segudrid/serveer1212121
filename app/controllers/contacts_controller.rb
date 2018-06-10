class ContactsController < ApplicationController
   def new
     @contact = Contact.new
   end 
  
   def create
     @contact = Contact.new(contact_params)
     if @contact.save
       redirect_to new_contact_path, notice: "Mensaje recibido"
     else
       redirect_to new_contact_path, notice: "Error al envíar mensaje"
     end
   end
  
  private
    def contact_params
     params.require(:contact).permit(:nombre, :correo, :comentarios)
   end
end

