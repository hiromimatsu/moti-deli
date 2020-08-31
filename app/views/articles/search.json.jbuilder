json.array! @articles do |article|
  json.id article.id
  json.restaurant article.restaurant
  json.image article.image
  json.menu article.menu
  json.rule article.rule
  json.area_id article.area_id
  json.user_id article.user_id
  json.user_sign_in current_user
end