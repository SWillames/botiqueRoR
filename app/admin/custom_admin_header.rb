class CustomAdminHeader < ActiveAdmin::Views::Header
  include Rails.application.routes.url_helpers
  def build(namespace, menu)
      ul do
        li {}
      end
  end
end
