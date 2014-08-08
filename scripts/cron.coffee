# Description:
#   send message to chat room by cron

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '*/5 * * * *', () =>
  robot.send {room: "#work"}, "test"
  , null, true, "Asia/Tokyo"
