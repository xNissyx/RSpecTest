require "rails_helper"

RSpec.describe "books", type: :system do
  it "GET /books" do
    visit "/books" # /booksへHTTPメソッドGETでアクセス
    expect(page).to have_text("Books") # 表示されたページに Books という文字があることを確認
  end
  
  it "POST /books" do
    visit "/books/new"
    fill_in "Title", with: "うんち"
    fill_in "Author", with: "にんげん"
    click_button "Create Book"
    
    expect(page).to have_text("Book was successfully created.")
    expect(page).to have_text("Title: うんち")
    expect(page).to have_text("Author: にんげん")
  end
end