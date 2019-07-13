require 'csv'

CSV.generate do |csv|
  column_names = ["状況", "内容", "公開/非公開", "いいね数"]
  csv << column_names
  @dreams.each do |dream|
    column_values = [
      dream.status,
      dream.content,
      dream.opened,
      dream.likes.length
    ]
    csv << column_values
  end
end