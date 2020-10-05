require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'plz migrate ur db d00d. Run `rake db:migrate` to solve the issue.'
end


use PostsController
use UsersController
run ApplicationController
