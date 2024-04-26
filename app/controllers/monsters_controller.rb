class MonstersController < ApplicationController

    def index
        @monsters = Monster.all
        render :index
    end

end
