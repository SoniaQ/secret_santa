feature 'homepage' do

  scenario 'a user can visit the homepage and see content' do
    visit '/'
    expect(page).to have_content 'Welcome to Secret Santa Fun!'
    expect(page).to have_content 'Organise your own Secret Santa online.'
  end

end
