require "csv"
    puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
    memo_type = gets.to_i
#1が入力された場合
  if memo_type == 1
    p "新規で作成するファイル名を拡張子を除いて入力して下さい"
    new_filename = gets.chomp + (".csv")
    p "メモしたい内容を記入して下さい"
    p "記入した内容を保存する際は「Ctrl+D」を押して下さい"
    csv_input = $stdin.read
    CSV.open(new_filename,"w") do |csv_text|
      csv_text << [csv_input]
    end
#2が入力された場合
  elsif memo_type == 2
    p "編集したいファイル名を拡張子を除いて入力してください"
    overwrite_filename = gets.chomp + (".csv")
    p "編集した内容を保存する際は「Ctrl+D」を押して下さい"
    csv_overwrite = $stdin.read
    CSV.open(overwrite_filename,"a") do |csv_write|
      csv_write << [csv_overwrite]
    end
#1,2以外が入力された場合
  else 
    p "指定された数字以外が入力されました、初めからやり直してください"
  end


