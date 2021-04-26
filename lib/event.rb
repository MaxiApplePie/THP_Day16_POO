require "time"
require "pry"

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@all_events = []

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save
    @title = title_to_save
    @attendees = attendees_to_save
    @@all_events << self
  end

  def read_start_date
    return @start_date
  end

  def read_duration
    return @duration
  end

  def read_title
    return @title
  end

  def read_attendees
    return @attendees
  end

  def postpone_24h
    @start_date += 86400
  end

  def end_date
    return @start_date + @duration
  end

  def is_past?
    @start_date < Time.now ? true : false
  end

  def is_future?
    @start_date > Time.now ? true : false
  end

  def is_soon?
    Time.new + 1800 > @start_date ? true : false
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "Durée : #{@duration} minutes"
    puts "Invités : #{@attendees.join(", ")}"
  end

  def self.list_events
    liste_events_titles = ""
    self.all.each do |event|
      liste_events_titles += event.read_title + " -- "
    end
    return liste_events_titles
  end

  def self.all
    return @@all_events
  end
end
