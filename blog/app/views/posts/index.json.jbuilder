json.array!(@posts) do |post|
  json.extract! post, :id, :blog_title, :content
  json.url post_url(post, format: :json)
end
