require 'dsl/entries/entry'

class ConnectionEntry < Entry

  def initialize( name, value, selector = nil, value_table = nil)
    super(name, value, selector)
    @value_table = value_table
  end

  def to_final
    value = @value_table.internal_lookup(@value)
    Selector.run(value, selector)
  end

  def to_ext
    to_final.to_ext
  end


end