# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CommissionType.create(name: 'Acrylic', days_to_complete: 14, active: 1)
CommissionType.create(name: 'Gouache', days_to_complete: 10, active: 0)
CommissionType.create(name: 'Oil', days_to_complete: 40, active: 1)
CommissionType.create(name: 'Papercut', days_to_complete: 5, active: 0)
CommissionType.create(name: 'Pastel', days_to_complete: 5, active: 1)
CommissionType.create(name: 'Pencil', days_to_complete: 5, active: 1)
CommissionType.create(name: 'Sculpture', days_to_complete: 120, active: 1)
CommissionType.create(name: 'Watercolour', days_to_complete: 5, active: 1)

ActivityType.create(name: 'Commission', description: 'Commissioned artworks', color: 'LightRed')
ActivityType.create(name: 'Development', description: 'Time spent of technique, practice, personal projects and attending courses', color: 'Beige')
ActivityType.create(name: 'Holiday', description: 'Holidays and other time off', color: 'Salmon')
ActivityType.create(name: 'Other', description: 'Non-art related activities', color: 'Bisque')
ActivityType.create(name: 'Paperwork', description: 'Admin, taxes, postage, correspondence and social media', color: 'Grey')
ActivityType.create(name: 'Preparation', description: 'Lesson preparation', color: 'Green')
ActivityType.create(name: 'Teaching', description: 'Individual and group tuition', color: 'Lilac')
ActivityType.create(name: 'Writing', description: 'Articles and blog posts', color: 'LightBlue')

Request.create(id: 1, title: 'On a summery day', fullname: 'Jenny Jiffer', contact_address: 'iffjiffy@jiffer.net', commission_type_id: 1, due_date: <%= (Date.today+3.months).strftime("%Y-%m-%d %H:%M:%S") %>, comments: "The sun comes up, another day begins", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>)
Request.create(id: 2, title: 'The happy couple', fullname: 'Sheldon Shelter', contact_address: 'shel@don.net', commission_type_id: 1, due_date: <%= (Date.today+4.months).strftime("%Y-%m-%d %H:%M:%S") %>, comments: "On the momentous occasion", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>)
Request.create(id: 3, title: 'The spuds are coming', fullname: 'Tim Thetom', contact_address: 'thumb@timtom.net', commission_type_id: 2, due_date: <%= (Date.today+5.months).strftime("%Y-%m-%d %H:%M:%S") %>, comments: "There is no escaping them", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>)
Request.create(id: 4, title: 'Still life', fullname: 'Worrisome Wilbert', contact_address: 'tracing@nightsky.net', commission_type_id: 3, due_date: <%= (Date.today+6.months).strftime("%Y-%m-%d %H:%M:%S") %>, comments: "The apples and pears", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>)
Request.create(id: 5, title: 'The dansers', fullname: 'Sally Spinner', contact_address: 'bouncer@fortheloveofdance.com', commission_type_id: 2, due_date: <%= (Date.today+7.months).strftime("%Y-%m-%d %H:%M:%S") %>, comments: "Around and around they go", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>)

ActivityCommission.create(id: 1, commission_id: 1, name: "Not interested", number_of_slots: 20, min_slot_separation: 3, created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S"))
ActivityHoliday.create(id: 1, name: "En vacance", created_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S") %>, updated_at: <%= (Date.today).strftime("%Y-%m-%d %H:%M:%S"))
