require ("./lib/event.rb")
require ("./lib/event_creator.rb")

answer = ""

nouveau_rdv = EventCreator.new

until answer == "E"
  answer = nouveau_rdv.menu
end
