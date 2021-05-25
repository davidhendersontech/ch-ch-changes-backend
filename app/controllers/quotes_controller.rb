class QuotesController < ApplicationController
    before_action :find_quote, only: [:show]

    def index
        @quote = Quote.all 
        render json: @quote
    end

    def show
        render json: @quote
    end

    

    private
    def find_quote 
        @quote = Quote.find params[:id]
    end
    
end
