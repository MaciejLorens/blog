class PortfolioController < ApplicationController
  def index
    @taxons = Taxon.find_by_name('Portfolio').children.order(:name)
  end
end
