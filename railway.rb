gem 'react-rails'
gem 'rack-cors'
gem 'active_model_serializers'

route "root to: 'railway#index'"
after_bundle do
  generate(:scaffold, 'counters name:string value:integer')
  generate(:controller, 'api/v1/counters')
  rails_command 'db:create'
  rails_command 'db:migrate'
  rails_command 'db:seed'
end
