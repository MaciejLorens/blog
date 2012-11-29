class RubyOnRailsController < ApplicationController
  def index
    @taxons = Taxon.find_by_name('Ruby on Rails').children.order(:name)
  end
end
