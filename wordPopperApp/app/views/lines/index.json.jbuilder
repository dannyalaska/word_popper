json.array!(@lines) do |line|
  json.extract! line, :id, :line
  json.url line_url(line, format: :json)
end
