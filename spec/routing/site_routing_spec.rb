require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SiteController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "site", :action => "index").should == { :path => "/", :method => :get }
    end

    it "should map #download" do
      route_for(:controller => "site", :action => "download").should == { :path => "/download", :method => :get }
    end

    it "should map #community" do
      route_for(:controller => "site", :action => "community").should == { :path => "/community", :method => :get }
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/").should == { :controller => "site", :action => "index" }
    end

    it "should generate params for #download" do
      params_from(:get, "/download").should == { :controller => "site", :action => "download" }
    end

    it "should generate params for #community" do
      params_from(:get, "/community").should == { :controller => "site", :action => "community" }
    end
  end
end
