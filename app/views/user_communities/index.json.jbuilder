json.array!(@user_communities) do |user_community|
  json.extract! user_community, :id, :community_id, :user_id
  json.url user_community_url(user_community, format: :json)
end
