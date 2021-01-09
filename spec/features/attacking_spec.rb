feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Rachel attacked Katie!')
  end

  scenario 'reduce Player 2\'s HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content('Katie: 60HP')
    expect(page).to have_content('Katie: 50HP')
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content('Katie attacked Rachel')
  end

  scenario 'reduce Player 1\'s HP by 10' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content('Rachel: 60HP')
    expect(page).to have_content('Rachel: 50HP')
  end
end