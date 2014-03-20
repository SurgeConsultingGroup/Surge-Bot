#!/bin/bash

export HUBOT_HIPCHAT_JID="USER_ID@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="PASSWORD"
export HUBOT_HIPCHAT_ROOMS="GROUP_ID@conf.hipchat.com"

bin/hubot --adapter hipchat