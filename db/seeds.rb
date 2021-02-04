# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Column.destroy_all
Task.destroy_all

joan = User.create(first_name: 'Joan', last_name: 'Holloway', username: 'joanie123', email: 'joan@agency.com', password: 'asdfgh')
new_agency = Project.create(title: 'Making a New Agency', user_id: joan.id)
marriage = Project.create(title: "Leave Your Loser Husband", user_id: joan.id)
leave_roger = Project.create(title: "Roger Doesn't Get Anything", user_id: joan.id)
modern_working_gal = Project.create(title: "Reject the Gender Roles You're in", user_id: joan.id)
agency_column_1 = Column.create(title: 'Needs to Be Done', project_id: new_agency.id)
agency_task_1 = Task.create(description: 'Make the workplace less sexist', column_id: agency_column_1.id)