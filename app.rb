get '/' do
    erb :index
end

get '/profile' do
    erb :profile
end

post '/make_apt' do
    apt = Appointment.create(doctor_id: params[:doctor_id], user_id: params[:user_id], location: params[:location], time: params[:time], reason: params[:reason])
    apt.to_json
end

post '/signin' do
    user = User.where(username: params[:username]).first
    if user.password == params[:password]
        flash[:notice] = "success"
        session[:user_id] = user.id
        redirect '/profile'
    else
        flash[:error] = "wrong password"
        redirect '/'
    end
end

post '/signup' do
    user = User.new(params[:user])
    if user.save
        flash[:notice] = "success"
        redirect '/profile'
    else
        flash[:error] = user.errors.full_messages
        redirect '/'
    end
end
