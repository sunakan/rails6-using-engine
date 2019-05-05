require "rails_helper"

RSpec.describe "root_pathのViewのテスト" do
  before do
    visit root_path
  end

  it "jsによって追加された文字列がある", js: true do
    expect(page).to have_content("Webpack管理下のjsで追加したh3(not engine)")
  end
end
