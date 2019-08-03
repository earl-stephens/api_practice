class Quote
  attr_reader :id,
              :dialogue,
              :movie,
              :character

  def initialize(quote)
    @id        = quote[:_id]
    @dialogue  = quote[:dialog]
    @movie     = quote[:movie]
    @character = quote[:character]
  end
end
