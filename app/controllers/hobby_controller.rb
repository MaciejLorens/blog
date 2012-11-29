class HobbyController < ApplicationController
  def index
    @taxons = Taxon.find_by_name('Hobby').children.order(:name)

  end
end
