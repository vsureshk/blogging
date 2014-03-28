

require "pp"

module Kernel 
  def cls                 # yeah I'm on Windows bitches!
    system("cls")
  end
end

# method the return the methods not present on basic objects, good for
# investigations
class Object
    def interesting_methods
        (self.methods - Object.instance_methods).sort
    end
    
    def local_methods
    (methods - Object.instance_methods).sort
  end


  def class_methods
    (methods - Class.instance_methods - Object.methods).sort
  end

  
end

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:EVAL_HISTORY] = 2000


 IRB.conf[:AT_EXIT] << Proc.new {puts "bye-bye"}

IRB.conf[:PROMPT][:CUSTOM] = {
   :PROMPT_N => "CC>> ",
   :PROMPT_I => "CC>> ",
   :PROMPT_S => nil,
   :PROMPT_C => "?> ",
   :RETURN => "=> %s\n"
   }

  # Set default prompt
  IRB.conf[:PROMPT_MODE] = :CUSTOM
