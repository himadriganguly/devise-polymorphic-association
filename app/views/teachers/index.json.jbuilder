json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :qualification, :experience
  json.url teacher_url(teacher, format: :json)
end
