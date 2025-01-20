Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # Update with your frontend URL for production
    resource '*', headers: :any, methods: %i[get post patch put delete options]
  end
end