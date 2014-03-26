# modified from https://github.com/github/hubot-scripts/blob/master/src/scripts/excuse.coffee

# Description:
#   Get a random developer or designer excuse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot developer excuse me - Get a random developer excuse
#   hubot developer excuse - Get a random developer excuse
#
# Author:
#   ianmurrays, hopkinschris

module.exports = (robot) ->
  robot.respond /developer excuse|excuse(?: me)?/i, (msg) ->
    robot.http("http://developerexcuses.com")
      .get() (err, res, body) ->
        matches = body.match /<a [^>]+>(.+)<\/a>/i

        if matches and matches[1]
          msg.send matches[1]
