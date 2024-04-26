class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_email
    @passenger = params[:passenger]
    mail(to: @user.email, subject: 'Your flight has been booked!')
  end
end
