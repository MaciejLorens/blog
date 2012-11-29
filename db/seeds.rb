# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => 'mckl@poczta.fm', :password => 'clickers', :password_confirmation => 'clickers')

Role.create!(:name => 'admin')
Role.create!(:name => 'user')

u = User.find_by_email 'mckl@poczta.fm'
u.roles = [Role.find_by_name('admin')]

Taxon.create!(:name => 'Home', :permalink => '/')
Taxon.create!(:name => 'Blog', :permalink => '/posts')
Taxon.create!(:name => 'Hobby', :permalink => '/hobby')
Taxon.create!(:name => 'Ruby on Rails', :permalink => '/ruby_on_rails')
Taxon.create!(:name => 'Portfolio', :permalink => '/portfolio')
Taxon.create!(:name => 'Contact', :permalink => '/contact')