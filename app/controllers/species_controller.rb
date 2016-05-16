class SpeciesController < ApplicationController

  def index
    @plants = Plant.all
    @animals = Animal.all
  end

end
