class Placeholder

  attr_accessor :height, :width, :bg_color, :fg_color, :text

  def initialize(size, options = {})
    measure(size)
    options.each{|(k,v)| instance_variable_set("@#{k}", v)}
  end

  def measure(size)
    if size =~ /\d+x\d+/
      @width, @height = size.split("x").map{|s| s.to_i}
    else
      @width, @height = size.to_i, size.to_i
    end
  end

  def to_s
    "<img src=\"#{url}\" alt=\"placeholder\" />"
  end

  def url
    "http://placehold.it/#{size_str}#{color_str}#{text_str}"
  end

  def size_str
    "#{@width}x#{@height}"
  end

  def text_str
    return "" if @text == nil
    "&text=" + @text.gsub(" ", "+")
  end

  def color_str
    if @bg_color.nil? && @fg_color != nil
      @text = "Set :bg_color when using :fg_color"
    end

    str = ""
    str += "/#{@bg_color}" unless @bg_color.nil?
    str += "/#{@fg_color}" unless @fg_color.nil?
    str
  end

end
