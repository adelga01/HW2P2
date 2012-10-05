#File: ar_reminder.rb
require "active_record"
#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter=>"sqlite3",:database=>"testdb.sqlite")

#Define database schema, and create database reminder

class RemindersTableScript < ActiveRecord::Migration
def self.up
create_table :Reminders do |t|
t.string :task
t.string :date
t.string :complete
end 
end

def self.down
drop_table :Reminder
end
end

#create the table that will be used in database
#RemindersTableScript.up
class Reminder < ActiveRecord::Base
end
