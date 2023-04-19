# frozen_string_literal: true

require "sinatra/base"

# app entrypoint
class NorthVolt < Sinatra::Application
  get "/" do
    content_type :json
    { north: "volt" }.to_json
  end

  run! if app_file == $0
end
