class LotrQuoteFacade
  attr_reader :search_term

  def initialize(search_term)
    @search_term = search_term
  end

  def search_results_count
    data.count
  end

  def ten_search_results
    data[0..9].map do |quote|
      Quote.new(quote)
    end
  end

  private

  def data
    @data ||= LotrService.quote_search(q: search_term)
  end
end
