require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SiteController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "site", :action => "index").should == { :path => "/", :method => :get }
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/").should == { :controller => "site", :action => "index" }
    end
  end
end
