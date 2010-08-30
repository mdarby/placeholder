require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Placeholder" do

  it "should understand its size" do
    p = Placeholder.new(300)
    p.to_s.should == "<img src=\"http://placehold.it/300x300\" alt=\"placeholder\"  />"
  end

  it "should understand its height and width" do
    p = Placeholder.new("200x300")
    p.to_s.should == "<img src=\"http://placehold.it/200x300\" alt=\"placeholder\"  />"
  end

  it "should know about a bg_color" do
    p = Placeholder.new(400, :bg_color => "FFFFFF")
    p.to_s.should == "<img src=\"http://placehold.it/400x400/FFFFFF\" alt=\"placeholder\"  />"
  end

  it "should know about a fg_color" do
    p = Placeholder.new(400, :bg_color => "FFFFFF", :fg_color => "FE0000")
    p.to_s.should == "<img src=\"http://placehold.it/400x400/FFFFFF/FE0000\" alt=\"placeholder\"  />"
  end

  it "should alert the user if they set :fg_color and not :bg_color" do
    p = Placeholder.new(400, :fg_color => "FE0000")
    p.to_s.should == "<img src=\"http://placehold.it/400x400/FE0000&text=Set+:bg_color+when+using+:fg_color\" alt=\"placeholder\"  />"
  end

  it "should know about its text" do
    p = Placeholder.new(400, :text => "Sample Text")
    p.to_s.should == "<img src=\"http://placehold.it/400x400&text=Sample+Text\" alt=\"placeholder\"  />"
  end

  it "should throw an error when a size isn't passed in" do
    lambda{ Placeholder.new }.should raise_error
  end

  it "should allow css_classes" do
    p = Placeholder.new(300, :class => "c1 c2")
    p.to_s.should == "<img src=\"http://placehold.it/300x300\" alt=\"placeholder\" class=\"c1 c2\" />"
  end

  it "should allow css_id" do
    p = Placeholder.new(300, :id => "gravatar")
    p.to_s.should == "<img src=\"http://placehold.it/300x300\" alt=\"placeholder\" id=\"gravatar\" />"
  end

  context "in Rails 3" do
    before do
      class String
        def html_safe; "safe!" end
      end
    end

    it "should sanitize :to_s in Rails3" do
      p = Placeholder.new(300)
      p.to_s.should == "safe!"
    end

  end

end
