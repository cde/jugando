require 'spec_helper'

describe PaginasController do
  render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have home title" do
      get 'home'
      response.should have_selector("title",
                                    :content => "Railing 3.0.0 | Home")
    end

  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end
