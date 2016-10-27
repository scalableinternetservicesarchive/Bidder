json.array!(@communities) do |community|
  json.extract! community, :id, :name, :location
  json.url community_url(community, format: :json)
end
