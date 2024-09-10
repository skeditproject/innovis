class ContactMailer < ApplicationMailer
  default from: 'innovislawpartner.com'

  def send_contact_form(params)
    @name = params[:name]
    @message = params[:message]
    @contact_email = params[:email]
    mail(to: @contact_email, subject: 'New Contact Us Message')
  end
end
