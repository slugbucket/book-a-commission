json.extract! student, :id, :fullname, :details, :created_at, :updated_at
json.url student_url(student, format: :json)
