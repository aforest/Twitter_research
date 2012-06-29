class SearchesController < ApplicationController
  def index
  end
  def show
   search =  SimpleTwitter::Search.new
   #searcher.per_page = params[:results_per_page]
    @results =  search.search(params[:q])
  end
end
