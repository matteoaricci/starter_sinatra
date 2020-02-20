class PokemonController < Sinatra::Base
    set(:views, "app/views/pokemon")
    set :method_override, true

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
        redirect to "/pokemons/#{pokemon.id}"
    end

    get '/pokemons/:id' do
        @pokemon = Pokemon.all.find(params[:id])

        erb :show
    end

    get '/pokemons/:id/edit' do
        @pokemon = Pokemon.all.find(params[:id])
        erb :edit
    end

    patch '/pokemons/:id' do
        pokemon = Pokemon.all.find(params[:id])
        pokemon.update(name: params[:name], poke_type: params[:poke_type])
        redirect "/pokemons/#{pokemon.id}"
    end

end