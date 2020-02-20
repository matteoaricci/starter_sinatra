class PokemonController < Sinatra::Base
    set(:views, "app/views/pokemon")

    get '/pokemons' do
        erb :index
    end

    get '/pokemons/new' do 
        erb :new
    end

    post '/pokemons' do 
        @name = params[:name]
        @poke_type = params[:poke_type]
        pokemon = Pokemon.create(name: @name, poke_type: @poke_type)
        redirect to '/pokemons'
    end
end