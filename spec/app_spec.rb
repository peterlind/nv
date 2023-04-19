# frozen_string_literal: true

require "rubygems"
require "bundler"
require "app"
Bundler.require(:default)

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  NorthVolt
end

RSpec.describe NorthVolt do
  it "returns volt" do
    get "/", accept: :json
    expect(JSON.parse(last_response.body)).to eq({ "north" => "volt" })
  end
end
