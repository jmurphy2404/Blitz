json.extract! job, :id, :origin_lat, :origin_lng, :dest_lat, :dest_lng, :origin, :destination, :date, :time, :bike_id, :valet_id, :status, :created_at, :updated_at
json.url job_url(job, format: :json)
