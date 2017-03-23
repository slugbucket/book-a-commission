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

