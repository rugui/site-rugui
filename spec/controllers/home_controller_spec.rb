require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HomeController do
  include LocaleSpec

  def do_get(parameters = {})
    get :index, parameters
  end

  def do_action
    do_get @parameters
  end

  it_should_behave_like "locale aware"
end

