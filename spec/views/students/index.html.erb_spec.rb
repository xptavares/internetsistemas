require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :registre_number => "Registre Number",
        :status => 1
      ),
      Student.create!(
        :name => "Name",
        :registre_number => "Registre Number",
        :status => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Registre Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
