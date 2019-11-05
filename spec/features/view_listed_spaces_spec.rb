feature 'View Listed Spaces' do

  scenario 'User can view the View Spaces page' do
    visit('/')
    click_button('View Listed Spaces')
    expect(page).to have_content('View Listed Spaces')
  end

  scenario 'List of spaces visible is empty before any are added' do
    visit('/')
    click_button('View Listed Spaces')
    expect(page).to_not have_content('A Studio Apartment')
  end

  scenario 'User can see a space that was listed beforehand' do
    visit('/')
    click_button('List a New Space')
    fill_in('name', with: 'A Studio Apartment')
    fill_in('cost', with: 200)
    fill_in('address', with: '771 Imaginary Road')
    fill_in('description', with: 'A studio apartment in a busy place.')
    click_button('Submit')
    visit('/')
    click_button('View Listed Spaces')
    expect(page).to have_content('A Studio Apartment')
  end

end
