describe "Product CRUD steps", type: :feature do
  before :each do
    # User.make(email: 'user@example.com', password: 'password')
    visit '/products/new'
  end

  it "create with success" do
    fill_in 'Name', with: 'IPhone XS'
    fill_in 'Description', with: 'Ducimus placeat qui atque assumenda numquam placeat rerum pariatur sunt.'
    fill_in 'Size', with: 'Plus Size'
    fill_in 'Photo', with: 'product-photo.jpg'
    click_button 'Create Product'
    expect(page).to have_content 'Product was successfully created'
  end
end