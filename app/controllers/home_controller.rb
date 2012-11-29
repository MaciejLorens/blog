class HomeController < ApplicationController
  def index
    @taxons = Taxon.find_by_name('Home').children.order(:name)
  end
end
