class ContactController < ApplicationController
  def index
    @taxons = Taxon.find_by_name('Contact').children.order(:name)
  end
end
