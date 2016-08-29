class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'antonelo@gmail.com',
        :subject => "New Bearlin-Bikes contact form message from #{name}")
  end
end