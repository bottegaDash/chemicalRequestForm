json.extract! request_form, :id, :emergency, :additional_comments, :created_at, :updated_at
json.url request_form_url(request_form, format: :json)
