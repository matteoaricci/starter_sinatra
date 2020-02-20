require_relative './config/environment'

Rack::MethodOverride

use PokemonsController
use TrainersController
use PartiesController
run ApplicationController
