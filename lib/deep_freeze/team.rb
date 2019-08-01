require './lib/module/deep_freezable'

class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end

puts Team.include?(DeepFreezable)
team = Team.new
p team.is_a?(DeepFreezable)
