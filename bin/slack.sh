echo -e "\n\n"
printf '🎉\e[34m Success! \e[m🎉\n'

curl -X POST -H 'Content-type: application/json' \
  --data '{"text": "Thank you for your commit!  Your change makes us strong.\n",
           "username": "Deploy bot",
           "channel": "#nodejs",
           "icon_emoji": ":tada:",
           }' \
    https://hooks.slack.com/services/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