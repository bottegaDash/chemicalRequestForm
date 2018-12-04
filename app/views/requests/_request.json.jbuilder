json.extract! request, :id, :emergency, :additional_comments, :status, :date, :created_at, :updated_at
json.url request_url(request, format: :json)
