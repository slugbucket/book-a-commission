json.extract! request, :id, :fullname, :contact_address, :commission_type_id, :due_date, :comments, :created_at, :updated_at
json.url request_url(request, format: :json)
