require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :registre_number => "Registre Number",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Registre Number/)
    expect(rendered).to match(/1/)
  end
end
