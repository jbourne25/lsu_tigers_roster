class LsuTigersRostser::Player
  
  @@all = []
  
  attr_accessor :name, :position, :height, :weight, :college_yr, :high_school, :hometown 
  
  def self.create_from_hash(hash)
    p = Player.new 
    hash.each do |key, value|
      p.send("#{key}=", value) if p.methods.include?("#{key}=".to_sym)
    end 
    p.save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  
    self 
  end 
  
  def info 
    <<~INFO 
    Name: #{name}
    Position: #{position}
    Height: #{height}
    Weight: #{weight}
    College Year: #{college_yr}
    High School: #{high_school}
    Hometown: #{Hometown}
    INFO 
  end 
end 
  
  
  
  
  
  