require_relative './config/environment'

Rack::MethodOverride

use PokemonController
use TrainerController
run ApplicationController
