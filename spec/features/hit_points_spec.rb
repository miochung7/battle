require './app.rb'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Katie: 60HP')
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Rachel: 60HP')
  end
end