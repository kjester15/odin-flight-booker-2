class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_email
    @passenger = params[:passenger]
    @flight = params[:booking]
    mail(to: @passenger[:email], subject: 'Your flight has been booked!')
  end
end
