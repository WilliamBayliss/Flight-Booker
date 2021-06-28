class PassengerMailer < ApplicationMailer

    def welcome_email
        @booking = params[:booking]
        mail(to: :letter_mailer, subject: 'Welcome to FlightBooker!')
    end 
end
