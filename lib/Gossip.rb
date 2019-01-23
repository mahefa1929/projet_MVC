require 'json'

class Gossip
attr_reader :content, :author
def initialize(author, content)
  @content = content
  @author = author
end
def save_gossip
 	t = {"#{author}" => "#{content}"}
 	f = File.open("/home/andry/thp-project/semaine-3/the_hacking_gossip_ruby_version_POO/db/gossip.json","a")
 	f.write(JSON.pretty_generate(t))
 	f.close
 end 
end	