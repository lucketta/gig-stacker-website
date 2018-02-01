class GigsController < ApplicationController
  #Displays all gigs when first opening Gigs page then filters gigs upon user request
  def index
    @gigs = Gig.all

    #creates a new hash object to hold a list of the gig industries for dropdown menu
    @industries = Hash.new(0)
    @gigs.each {|gig| @industries[gig.industry] += 1}

    @industries = @industries.keys.sort!
    @industries.unshift("All Industries");
  end

  #returns json object of filtered gigs using selected input from dropdown menu
  def filter_gigs
    gigs = Gig.all

    if params[:industry] == "All Industries"
      render :json => gigs
    else
      filtered_gigs = gigs.where(industry: params[:industry])
      render :json => filtered_gigs
    end
  end


  private

    def gig_params
      params.require(:gig).permit(:name, :industry, :description, :url, :image)
    end
end
