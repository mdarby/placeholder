require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Placeholder" do

  it "should understand its size" do
    p = Placeholder.new(:size => 300)
    p.to_s.should == "<img src=\"http://placehold.it/300\" alt=\"placeholder\"></img>" 
  end

  it "should understand its height and width" do
    p = Placeholder.new(:height => 300, :width => 200)
    p.to_s.should == "<img src=\"http://placehold.it/200x300\" alt=\"placeholder\"></img>" 
  end

  it "should know about a color" do
    p = Placeholder.new(:size => 400, :bg_color => "FFFFFF", :fg_color => "FE0000")
    p.to_s.should == "<img src=\"http://placehold.it/400/FFFFFF/FE0000\" alt=\"placeholder\"></img>"
  end

  it "should know about its text" do
    p = Placeholder.new(:size => 400, :text => "Sample Text")
    p.to_s.should == "<img src=\"http://placehold.it/400&text=Sample+Text\" alt=\"placeholder\"></img>"
  end

end