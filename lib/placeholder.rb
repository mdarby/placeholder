class Placeholder

  attr_accessor :size, :height, :width, :bg_color, :fg_color, :text

  def initialize(options = {})
    options.each_pair do |k,v|
      instance_variable_set "@#{k}", v
    end
    
    @text.gsub!(" ", "+") unless @text == nil
  end

  def to_s
    "<img src=\"#{url}\" alt=\"placeholder\"></img>"
  end

  def url
    "http://placehold.it/#{size_str}#{color_str}#{text_str}"
  end

  def size_str
    @size != nil ? @size : "#{@width}x#{@height}"
  end

  def text_str
    @text != nil ? "&text=#{@text}" : ""
  end

  def color_str
    (@bg_color != nil && @fg_color != nil) ? "/#{@bg_color}/#{@fg_color}" : ""
  end

end
