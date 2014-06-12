json.array!(@shelters) do |shelter|
  json.extract! shelter, :id, :name, :address, :city, :state, :zip_code, :phone, :main_url
  json.url shelter_url(shelter, format: :json)
end