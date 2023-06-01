class ChatbotsController < ApplicationController
    #csrf tokenの問題で追記コード
    # protect_from_forgery

    def create
      input = params[:input]
      client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])
      # Define logic to generate response based on user input
      # https://platform.openai.com/docs/api-reference/chat/create
      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo", # Required. # 使用するGPT-3のエンジンを指定
          messages: [{ role: "system", content: "You are a helpful assistant. response to japanese" }, { role: "user", content: input }], # Required.
          temperature: 0.7, # 応答のランダム性を指定
          max_tokens: 200,  # 応答の長さを指定
        },
      )

      respond_to do |format|
        format.json { render json: { response: response.dig("choices", 0, "message", "content") } }
      end
      # respond_toメソッドは、一つのアクションから複数の形式（HTML、JSON、XMLなど）でレスポンスを返す場合に利用します。
      # 例えば、ブラウザからのリクエストに対してはHTMLを返し、APIからのリクエストに対してはJSONを返す、といったケースで使用します。
      # response.dig("choices", 0, "message", "content") の部分は、response というハッシュから "choices" の 0 番目の要素の "message" の "content" を取り出すことを意味しています。
      # dig メソッドは、ハッシュや配列の中を掘り進んで指定した位置の値を取り出す Ruby のメソッドです。
      # OpenAIのAPIからのレスポンスは、一般にネストされた構造を持つハッシュとして返されます。そのため、dig メソッドを使用して、必要な情報（この場合は AI の生成したテキスト）を取り出しています。
    end
end
