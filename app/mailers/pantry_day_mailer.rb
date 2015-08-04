class PantryDayMailer < ApplicationMailer
  def client_list_email scheduled_clients
    @scheduled_clients = scheduled_clients
    mail(
      to: "pollysileo@gmail.com",
      subject: "Client List for Tomorrow"
      )
  end
end
