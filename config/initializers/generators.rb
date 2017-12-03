Rails.application.config.generators do |g|
  g.test_framework  :test_unit, fixture: false
  g.template_engine :erb
  g.helper          false
  g.stylesheets     false
  g.javascripts     false
end
