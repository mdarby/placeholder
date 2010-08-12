require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Placeholder" do

  it "should understand its size" do
    p = Placeholder.new(300)
    p.to_s.should == "<img src=\"http://placehold.it/300x300\" alt=\"placeholder\" />"
  end

  it "should understand its height and width" do
    p = Placeholder.new("200x300")
    p.to_s.should == "<img src=\"http://placehold.it/200x300\" alt=\"placeholder\" />"
  end

  it "should know about a color" do
    p = Placeholder.new(400, :bg_color => "FFFFFF", :fg_color => "FE0000")
    p.to_s.should == "<img src=\"http://placehold.it/400x400/FFFFFF/FE0000\" alt=\"placeholder\" />"
  end

  it "should know about its text" do
    p = Placeholder.new(400, :text => "Sample Text")
    p.to_s.should == "<img src=\"http://placehold.it/400x400&text=Sample+Text\" alt=\"placeholder\" />"
  end

  it "should throw an error when a size isn't passed in" do
    lambda{ Placeholder.new }.should raise_error
  end

end
