class QuotesController < ApplicationController

  def index
    @lotr_result = LotrQuoteFacade.new(params[:q_lotr])
  end
end
