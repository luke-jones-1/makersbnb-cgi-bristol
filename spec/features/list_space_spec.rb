feature 'List Space' do
  scenario 'User can submit a new listing' do
    visit('/')
    click_button('Submit')
    fill_in('name', with: 'My lovely cottage')
    click_button('Submit')
    expect(page).to have_content 'Thank you for listing your space!'
  end
end
