shared_examples "web session" do

  let(:user) do
    mock 'User', email: 'test@test.com', password: '12345679'
  end

  before do
    visit root_path
    current_path.should == admin_session_path

    fill_in "admin[email]",    with: user.email
    fill_in "admin[password]", with: user.password
    click_button "Sign in"

    page.should have_content('Sign out')
    current_path.should == root_path
  end

end
