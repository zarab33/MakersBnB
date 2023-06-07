require 'sinatra/base'
require_relative '../lib/repositories/spaces_repository'
require_relative '../lib/repositories/user_repository'
require_relative '../lib/repositories/booking_repository'

class Spaces < Sinatra::Base
  enable :sessions
  set :session_secret, "5cdde102f6f68294e1cff23f341aaaaf2d2725453eaccc8ebc239629e724fc53"



  get '/new_booking' do
    redirect '/login' unless logged_in?

    erb :new_booking
  end 

  post '/new_booking' do 
    redirect '/login' unless logged_in?

    booking = Booking.new
    booking.
  end 

  get '/booking/:booking_id' do 
  end

  get '/booking/:booking_id/edit' do 
  end 
 
  post '/booking/:booking_id/edit' do
  end

  get '/booking/:booking_id/delete' do
  end 

  post '/booking/:booking_id/delete' do 
  end 

  private

  def logged_in?
    !session[:user_id].nil?
  end
end



