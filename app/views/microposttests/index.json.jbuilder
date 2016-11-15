json.array!(@microposttests) do |microposttest|
  json.extract! microposttest, :id, :content, :user_id
  json.url microposttest_url(microposttest, format: :json)
end
