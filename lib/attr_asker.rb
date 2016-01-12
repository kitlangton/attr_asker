require "attr_asker/version"

class Class

  def attr_asker(*args)

    args.each do |arg|
      self.class_eval "def #{arg}?; !!@#{arg}; end"
    end

  end

end
