# frozen_string_literal: true

require "rubygems"
require "bundler"
Bundler.require(:default)

# app entrypoint
class NorthVolt < Sinatra::Base
  get "/" do
    content_type :json
    { north: "volt" }.to_json
  end
end
