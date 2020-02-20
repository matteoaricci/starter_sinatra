class TrainerController < Sinatra::Base
    set(:views, "app/views/trainer")
    set :method_override, true


    get '/trainers' do
        erb :index
    end

    get '/trainers/new' do 
        
        erb :new 
    end
end