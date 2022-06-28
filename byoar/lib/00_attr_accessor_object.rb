class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |ea_name|
      define_method(ea_name) do
      instance_variable_get("@#{ea_name}")
    end

    define_method("#{ea_name}") do |name|
      instance_variable_set("@#{ea_name}", name)
    end
  end


  end
end
