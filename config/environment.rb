# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
# Configurar correo gmail mediante smtp
ActionMailer::Base.smtp_settings = {
  :user_name => 'probandocorreo87@gmail.com',
  :password => "abcabc87",
  :domain => 'gmail.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true }
