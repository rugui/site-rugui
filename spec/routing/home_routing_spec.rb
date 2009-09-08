require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HomeController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "home", :action => "index").should == { :path => "/", :method => :get }
    end

    it "should map #terms" do
      route_for(:controller => "home", :action => "terms", :locale => "pt-BR").should == { :path => "/pt-BR/terms", :method => :get }
    end

    it "should map #privacy" do
      route_for(:controller => "home", :action => "privacy", :locale => "pt-BR").should == { :path => "/pt-BR/privacy", :method => :get }
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/").should == { :controller => "home", :action => "index" }
    end

    it "should generate params for #index using /pt-BR" do
      params_from(:get, "/pt-BR").should == { :controller => "home", :action => "index", :locale => 'pt-BR' }
    end

    it "should generate params for #terms" do
      params_from(:get, "/pt-BR/terms").should == { :controller => "home", :locale => "pt-BR", :action => "terms" }
    end

    it "should generate params for #privacy" do
      params_from(:get, "/pt-BR/privacy").should == { :controller => "home", :locale => "pt-BR", :action => "privacy" }
    end
  end
end
