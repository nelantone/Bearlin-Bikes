# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("tonio@bearlin-bikes.com", "Tonio", "Hi there Tony!")
  end
end