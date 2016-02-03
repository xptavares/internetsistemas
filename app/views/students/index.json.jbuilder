json.array!(@students) do |student|
  json.extract! student, :id, :name, :registre_number, :status
  json.url student_url(student, format: :json)
end
