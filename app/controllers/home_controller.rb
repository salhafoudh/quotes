class HomeController < ApplicationController
  def show
    @quote_array = Quote.ids
    random_id = @quote_array.sample
    @random_quote = Quote.find(random_id)

    
  end
end
