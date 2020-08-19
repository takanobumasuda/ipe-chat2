# result = rand(0..9)    # 0～9の中からランダムで数字が選ばれたものを変数resultに格納してください
# input = ""    # ループの条件でユーザーからの入力値を使いたい場合はここで空の変数として先に定義しておく。

# while input != result do
#     puts "0～9の数字を入力してください"
#     input = gets.chomp.to_i
    
    
#  if input == result
#     puts "正解！#{input}でした！"
#  elsif input < result
#     puts  "#{input}より大きい数字です"
#  else input > result
#     puts "#{input}より小さい数字です"
#  end
# end    
   # ユーザーの入力が答えと一致するまで処理を繰り返すループ文を書いてください
    # 以下ループ内処理
    # puts "0～9の数字を入力してください"
    # input      # ユーザーから入力を受けましょう
    
    # ユーザーが入力した値と変数resultの値を比べた場合の条件分岐を書きましょう
    # もし正解だった場合は、アプリケーションが終了するようにしてください

# num = 1

# while num <= 50
#     if num % 3 == 0
#         puts "Aho"
#     elsif  num.to_s.include?("3") 
#         puts "Aho"
#     else 
#         puts num    
#     end     
#     num += 1
# end     


def register_review(reviews)   # レビューを登録するメソッドを完成させてください。引数も利用しましょう。
    puts "商品名を入力してください"
    input_name = gets.chomp# ユーザーの入力を受け付けてください
    puts "感想を入力してください"
    input_comment = gets.chomp# ユーザーの入力を受け付けてください

    user = { name: input_name, comment: input_comment }# ユーザーの入力をハッシュにまとめましょう
    # ハッシュにしたものを、whileの前に定義したreviewsという配列に格納しましょう
    reviews << user
end

def show_reviews(reviews)     # レビューを全て表示するメソッドを完成させてください。引数も利用しましょう。
    # ループを使ってレビューを全て表示させましょう。
    # 下記のように表示されるようにしてください。
    # 【】はコードに直してください
    
    reviews.each do |review|
        puts "----------------------------"
        puts "商品名：#{review[:name]}"
        puts "感想：#{review[:comment]}"
    end    
end

reviews = []
while true do
    puts "番号を入力してください"
    puts "[1] レビューを登録する"
    puts "[2] レビューの一覧を見る"
    puts "[3] アプリを終了する。"

    input = gets.to_i

    case input
    when 1
        # レビューを登録するメソッドを呼び出してください
        register_review(reviews)
    when 2
        # レビュー一覧を表示するメソッドを呼び出してください
        show_reviews(reviews)

    when 3
        # アプリケーションを終了する処理を書いてください
        exit
    end
end