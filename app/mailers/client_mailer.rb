class ClientMailer < ActionMailer::Base
  default from: "info@minibank.com"

  def welcome(client)
    @client = client
    mail to: client.email, subject: 'Witamy :)'
  end
end
