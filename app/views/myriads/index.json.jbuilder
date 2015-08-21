json.array!(@myriads) do |myriad|
  json.extract! myriad, :id
  json.url myriad_url(myriad, format: :json)
end
