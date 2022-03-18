describe "Product CRUD steps", type: :feature do
  context "create Product" do
    let!(:product) { build(:product) }
    before do
      visit '/products/new'
    end
    it "create with success" do
      fill_in 'Name', with: product.name
      fill_in 'Description', with: product.description
      fill_in 'Size', with: product.size
      fill_in 'Photo', with: product.photo
      click_button 'Create Product'
      expect(page).to have_content 'Product was successfully created'
    end
  end


  context 'update Product' do
    let!(:product) { create(:product) }
    before do
      visit "/products/#{product.id}/edit"
    end

    it "update with success" do
      fill_in 'Name', with: 'Moto G'
      fill_in 'Description', with: 'Ducimus placeat qui atque assumenda numquam placeat rerum pariatur sunt.'
      fill_in 'Size', with: 'Plus Size'
      fill_in 'Photo', with: 'product-photo.jpg'
      click_button 'Update Product'
      expect(page).to have_content 'Product was successfully updated'
    end
  end
end