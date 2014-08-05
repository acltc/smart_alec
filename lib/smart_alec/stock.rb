require 'stock_quote'

module SmartAlec
  class Stock
    def initialize(symbol)
      @stock_data = StockQuote::Stock.quote(symbol)
    end

    def current_price
      @stock_data.bid_realtime
    end
  end
end