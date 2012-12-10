class TaxonsController < ApplicationController
  
  before_filter :check_access
  
  def index
    @taxons = Taxon.all
  end

  def edit
    @taxon = Taxon.find params[:id]
  end
  
  def update
    taxon = Taxon.find params[:id]
    
    if taxon.update_attributes params[:taxon]
      redirect_to :action => 'index', :notice => "You have successfully updated taxon!"
    else
      redirect_to :action => 'index', :notice => "Error occurred when updating taxon. Try again later."
    end
  end
  
  def create
    @taxon = Taxon.new params[:taxon]
    
    if @taxon.save
      redirect_to :action => 'index', :notice => "You have successfully created taxon!"   
    else
      redirect_to :action => 'index', :notice => "Error occurred when creating taxon. Try again later."
    end
  end

  def new
    @taxon = Taxon.new
  end

  def show
    @taxon = Taxon.find params[:id]
  end
  
  def destroy
    taxon = Taxon.find params[:id]
    if taxon.destroy
      redirect_to :action => 'index', :notice => "You have successfully deleted taxon"
    else
      redirect_to :action => 'index', :notice => "Error occurred when deleting taxon. Try again later."
    end
  end

  protected
  def check_access
    redirect_to root_path unless current_user && current_user.is_admin?
  end
end
