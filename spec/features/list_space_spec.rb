feature 'List Space' do
  scenario 'User can view List Space page' do
    visit('/')
    click_button('List a New Space')
    expect(page).to have_content 'List a New Space'
  end

  scenario 'User can submit a new listing' do
    visit('/')
    click_button('List a New Space')
    fill_in('name', with: 'My lovely cottage')
    fill_in('cost', with: 80)
    fill_in('address', with: '34 Madeup Lane')
    fill_in('description', with: 'A quaint and pretty cottage in the middle of nowhere.')
    click_button('Submit')
    expect(page).to have_content 'Thank you for listing your space!'
  end
end
