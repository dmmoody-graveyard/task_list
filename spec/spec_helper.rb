require('rspec')
require('pg')
require('to_do')
require('list')

DB = PG.connect ({:dbname => 'todo_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM todos *;")
  end
end
