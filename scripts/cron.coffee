# Description:
#   send message to chat room by cron

cron = require('cron').CronJob

cronMessages = [
  ["0 9 1-5", "お仕事の時間ですよ～ (´∀｀)ε"],
  ["0 10 1-5", "あと7時間 (；´Д｀)"],
  ["0 11 1-5", "あと6時間 (o)ノ彡"],
  ["0 12 * * 1-5", "お昼の時間ですよ～ひとやすみ ｡ﾟ+.(･∀･)ﾟ+.ﾟｲｲ!!"],
  ["0 13 * * 1-5", "お昼の時間終了 ( ´・ω・)o "],
  ["0 14 * * 1-5", "あと4時間 ( ｀д´)b"],
  ["0 15 * * 1-5", "あと3時間 (*´･ω･)"],
  ["0 16 * * 1-5", "あと2時間 （　´_ゝ`）ﾌｰﾝ"],
  ["0 17 * * 1-5", "あと1時間 ｡ﾟ+.(･∀･)ﾟ+.ﾟｲｲ!!"],
  ["0 18 * * 1-5", "今日の業務終了の時間です！ ヽ(*´∀｀)ﾉﾟ:.｡+ﾟ"]
]

for cronMessage in cronMessages
  module.exports = (robot) ->
  new cron cronMessage[0], () =>
    robot.send {room: "#work"}, cronMessage[1]
  , null, true, "Asia/Tokyo"


  




