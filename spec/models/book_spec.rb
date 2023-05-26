require 'rails_helper' # 設定ファイルrails_helper.rbを読み込むコードが全テストにあります

RSpec.describe Book, type: :model do # Bookモデルのテストコードをブロック内に書いていきます
  # ここにBookモデルのテストコードを書いていきます
  # 失敗するテストを書く
    # it "trueであるとき、falseになること" do
    #   expect(true).to eq(false)
    # end
  # 成功するテスト
    it "trueであるとき、falseになること" do
      expect(true).to eq(true)
    end

    it "bookモデルをnewしたとき、nilではないこと" do
      expect(Book.new).not_to eq(nil)
    end

    describe "Book#title_with_author" do # describeメソッドをつかってメソッドごとに区切ると読みやすいです
    # contextは「～のとき」で区切るのが通例らしい
      context "Book#title_with_authorを呼び出したとき" do
        
        it "titleとauthorを結んだ文字列が返ること" do
          book = Book.new(title: "うんち", author: "人間")
          # binding.irb
          # ↑こいつをはさむことで処理止めて変数の中身見れるぞ！
          expect(book.title_with_author).to eq("うんち - 人間")
        end
        
      end
      
      context "Book#titleが文字列のとき" do
        # let
      end
    end
end