class PartiesController < Sinatra::Base

    get '/parties' do 
        erb :index
    end

    get '/parties/new' do 
        erb :new
    end

    post '/parties' do 
        
    end
end