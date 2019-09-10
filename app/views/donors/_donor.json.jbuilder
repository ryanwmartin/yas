json.extract! donor, :id, :first_name, :middle_name, :last_name, :email, :phone, :project, :donation_ammount, :donation_ammount, :status, :created_at, :updated_at
json.url donor_url(donor, format: :json)
