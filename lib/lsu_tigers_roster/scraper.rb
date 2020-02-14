class LsuTigersRoster::Scraper 
  
  def scraper_roster
    
    doc = Nokogiri:HTML(open("https://www.lsusports.net/sports/football/roster/2019.com"))
    player_docs = doc.css(".sidearm-roster-players-container").text 
    player_docs.each do |player.doc|
    player_hash = {}
    player_hash["name"] = player.doc.css("sidearm-roster-player-name p").text 
    player_hash["position"] = player.doc.css("sidearm-roster-player-position-long-short.hide-on-small-down").text 
    player_hash["height"] = player_doc.css("sidearm-roster-player-height").text 
    player_hash["weight"] = player_doc.css("sidearm-roster-player-weight").text 
    player_hash["college_yr"] = player_doc.css("sidearm-roster-player-academic-year").text 
    player_hash["hometown"] = player_doc.css("sidearm-roster-player-hometown").text 
    player_hash["high_school"] = player_doc.css("sidearm-roster-player-highschool").text
    player.create_from_hash(player_hash)
  end 
  end
end 