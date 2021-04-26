#require ("./event.rb")
# Partie II
class EventCreator
  def menu
    # t = Event.new("2021-08-13 09:30:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    # Title
    inp_title = gets.chomp
    if (inp_title == "") then inp_title = "Daily standup" end
    # Date
    puts "Super. Quand aura-t-il lieu ?"
    inp_start_date = gets.chomp
    if (inp_start_date == "") then inp_start_date = "2023-08-13 09:30:00" end
    # Durée
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    inp_duration = gets.chomp.to_i
    if (inp_duration == 0) then inp_duration = 45 end
    # Emails
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    inp_att = gets.chomp
    if (inp_att == "") then inp_att = "truc@machin.com, bidule@chose.fr" end
    inp_attendees = inp_att.split(",")
    # Creation
    j = Event.new(inp_start_date, inp_duration, inp_title, inp_attendees)
    puts "Super, c'est noté, ton évènement a été créé !"
    # Controle
    puts Event.list_events
    # Suite
    puts "Un autre ? [E pour Exit] ****************************"
    return answer = gets.chomp
  end
end
