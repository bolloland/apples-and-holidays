require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
 
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
#holiday_hash[:spring][:memorial_day] << supply   ##  <<THIS WORK TOO

#holiday_hash[:spring][:memorial_day] << "Table Cloth"
holiday_hash.each do |season, holiday|
if season == :spring 
  holiday.each do |holiday, items|
  items << supply
#holiday_hash[:spring][:memorial_day].remove "Grill"
#holiday_hash[:spring][:memorial_day].replace ["BBQ", "Table Cloth"]
end
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
# return an array of all of the supplies that are used in the winter season
# winter_supplies=[]
# winter_supplies << holiday_hash[:winter][:christmas].values
# winter_supplies << holiday_hash[:winter][:new_years].values
#winter_supplies
holiday_hash[:winter].values_at(:christmas, :new_years).join
#holiday_hash[:winter].values_at(:christmas, :new_years).join
end
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# Fall:
#   Thanksgiving: Turkey
# Spring:
#   Memorial Day: BBQ
# TEXT
def all_supplies_in_holidays(holiday_hash)
   holiday_array=[]
  holiday_hash.each do |season, holiday|
    #binding.pry 
    puts "#{season.capitalize}:"
      holiday.each do |holiday_name, items|
        puts "  #{holiday_name.to_s.split("_").map { |h| h.capitalize }.join(" ") }: #{items.join(", ")}"
        
#new_years>>"new_years">>"new", "years">>["new", "years"]>>["New","Years"]>>["New Years"]  New Years ...how?
        # split.map(&:capitalize).join(' ')
        # puts "  #{x}: #{items.join(", ")}"
        #new_holiday = holiday_name.str.split("_").capitalize
#puts "  #{holiday_name}: #{items.join(", ")}"
   #str.split("_").map.(&:capitalize).join(" ")    
  #puts holiday_array.join(" ")
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.map do |season, holiday|
  holiday.map do |event, items|
       if items.include?("BBQ")
      event
    end
  end
end.flatten.select {|x| x!= nil}
end








