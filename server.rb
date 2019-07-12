require 'sinatra'
require  'json'


get '/' do
  content_type :json

  random_line = nil
  File.open("foo.txt") do |file|
    file_lines = file.readlines()
    random_line = file_lines[Random.rand(0...file_lines.size())]
  end

  { pickup_line: random_line}.to_json

end
