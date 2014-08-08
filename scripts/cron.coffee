# Description:
#   send message to chat room by cron

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 17 * * *', () =>
  robot.send {room: "#work"}, "test"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '5 17 * * *', () =>
  robot.send {room: "#work"}, "test2"
  , null, true, "Asia/Tokyo"


