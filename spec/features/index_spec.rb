feature 'Index' do
  scenario 'User can load the Index Page' do
    visit '/'
    expect(page).to have_content 'Welcome to Makers BNB!'
  end

  scenario 'User can select to list a new space' do
    visit '/'
    click_button('Submit')
    expect(page).to have_content 'List a New Space'
  end
end
