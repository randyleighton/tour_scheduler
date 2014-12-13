class UserMailer < ActionMailer::Base

  default from: "\"The Tour Scheduler\" tour@example.com"

  def signup_confirmation(user)
    @user = user
    @url = "http://localhost:3000/user/#{@user.id}/edit"
    @email = @user.email
    mail(to: @email, subject: 'Click link below to schedule tour')
  end
  
end
