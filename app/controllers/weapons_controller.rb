class WeaponsController < ApplicationController

    def index
        @weapons = Weapon.all
        render :index
    end

end
