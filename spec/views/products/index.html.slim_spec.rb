require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :description => "Description",
        :prices => 1,
        :categories => "Categories"
      ),
      Product.create!(
        :name => "Name",
        :description => "Description",
        :prices => 1,
        :categories => "Categories"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
  end
end
