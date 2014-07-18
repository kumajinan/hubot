# Description:
#   talk back "NURUPO"

module.exports = (robot) ->
    robot.hear /ぬるぽ/, (msg) ->
        console.log(msg)
        msg.send "@#{msg.message.user.mention_name} ガッ"