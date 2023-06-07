class User < ApplicationRecord
  after_create :send_welcome_email

  def send_welcome_email
    WelcomeJob.perform_in(10.minutes, id)
  end    
end
