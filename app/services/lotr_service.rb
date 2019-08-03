class LotrService

  def self.quote_search(params)
    response = conn.get("v1/movie/#{params[:q]}/quote")
    results = JSON.parse(response.body, symbolize_names: true)[:docs]
  end

  private

  def self.conn
    Faraday.new(:url => 'https://the-one-api.herokuapp.com/') do |f|
      f.headers['Authorization'] = "Bearer #{ENV['LOTR_API_KEY']}"
      f.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

end
