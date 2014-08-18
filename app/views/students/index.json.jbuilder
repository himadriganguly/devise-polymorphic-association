json.array!(@students) do |student|
  json.extract! student, :id, :name, :cl, :mobile
  json.url student_url(student, format: :json)
end
