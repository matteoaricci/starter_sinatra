class TrainerController < Sinatra::Base
    set(:views, "app/views/trainer")
    set :method_override, true


    get '/trainers' do
        erb :index
    end

    get '/trainers/new' do 
        
        erb :new 
    end

    post '/trainers' do
        trainer = Trainer.create(name: params[:name])

        redirect '/trainers'
    end

    get '/trainers/:id' do
        @trainer = Trainer.find(params[:id])

        erb :show
    end

    get '/trainers/:id/edit' do
        @trainer = Trainer.find(params[:id])

        erb :edit
    end

    patch '/trainers/:id' do
        trainer = Trainer.find(params[:id])
        trainer.update(name: params[:name], catchphrase: params[:catchphrase])
        redirect "/trainers/#{trainer.id}"
    end

    delete 
end