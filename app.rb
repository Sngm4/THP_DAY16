# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

test1 = User.new("mail@mail.fr", 17)
matthias = User.new("matthias.b@gmail.com", 30)
 puts User.find_my_email("")

my_event = Event.new("2022-05-25 12:00", 30, "Conférence pour les nulles", ["eli@yahoo.fr", "pierre@gmail.com"])



