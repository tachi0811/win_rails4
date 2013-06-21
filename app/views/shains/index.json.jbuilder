json.array!(@shains) do |shain|
  json.extract! shain, :shainName, :shainNameYomi, :tel1, :tel2, :postNo, :address1, :address2
  json.url shain_url(shain, format: :json)
end
