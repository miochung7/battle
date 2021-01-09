feature 'switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Rachel's turn")
    end
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content("Rachel's turn")
    expect(page).to have_content("Katie's turn")
  end
end