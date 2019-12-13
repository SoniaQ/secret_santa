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

end
