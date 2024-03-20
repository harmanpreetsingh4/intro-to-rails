class ApplicationController < ActionController::Base
  include Rails.application.routes.url_helpers #easy to generate url's within application
end
