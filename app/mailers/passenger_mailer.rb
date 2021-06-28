class PassengerMailer < ApplicationMailer

    def welcome_email
        @booking = params[:booking]
        @url = 'http://example.com/login'
        mail(to: @user.email, subject: 'Welcome to FlightBooker!')
    end 
end
