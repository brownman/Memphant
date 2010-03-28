# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def gender_options
    ['Male', 'Female']
  end

  def time_zone_options
    (-11..11).collect { |time| "GMT #{time}:00" }
  end


end
