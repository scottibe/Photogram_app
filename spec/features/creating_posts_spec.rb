require 'rails_helper.rb'

feature 'Creating posts' do 
  scenario 'can create a post' do 
    visit '/'
    click_link 'New Post'
    attach_file('Image', "../abby_the_bookworm_2.JPG")
    fill_in 'Caption', with: 'okey dokey #abbytime'
    click_button 'Create Post'
    expect(page).to have_content('#abbytime')
    expect(page).to have_css("img[src*='abby_the_bookworm_2.JPG']")
  end 
end    