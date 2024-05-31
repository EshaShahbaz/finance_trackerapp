class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'pk_a0b16124eaab4905846a18957976ef06',
            secret_token: 'sk_e9cab15013df42379605bd252e4c7d50',
            endpoint: 'https://cloud.iexapis.com/v1'
          )
          client.price(ticker_symbol)
    end
end
