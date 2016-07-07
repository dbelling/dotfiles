require 'rubygems'
require 'irb/completion'

begin
  require 'awesome_print'
  AwesomePrint.irb!
rescue LoadError => err
  warn "No awesome_print #{err}"
end

begin
  require 'hirb'
  Hirb::View.enable
rescue LoadError => err
  #warn "No Hirb: #{err}"
end

IRB.conf[:PROMPT][:CUSTOM] = {
  :AUTO_INDENT => true ,
  :PROMPT_I => '>> ',
  :PROMPT_S => '%l>> ',
  :PROMPT_C => '.. ',
  :RETURN => "=>%s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM

class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end
