feature 'homepage' do

  scenario 'a user can visit the homepage and see content' do
    visit '/'
    expect(page).to have_content 'Welcome to Secret Santa Fun!'
    expect(page).to have_content 'Organise your own Secret Santa online.'
  end

  scenario 'a user can see the Secret Santa form and submit button' do
    visit '/'
    expect(page).to have_field 'Name'
    expect(page).to have_field 'Email'
    expect(page).to have_selector(:link_or_button, 'Submit')
  end

  scenario 'a user can submit name and email' do
    visit '/'
    fill_in(:name, with: 'Sonia')
    fill_in(:email, with: 'sonia@random.com')
    fill_in(:names, with: 'Daniel')
    fill_in(:emails, with: 'daniel@random.com')
    click_button('Submit')
    expect(page).to have_content('Sonia, sonia@random.com')
    expect(page).to have_content('Daniel, daniel@random.com')
  end

end
