# Add the user to the team
curl -X PUT \
  -H "Authorization: token $GITHUB_TOKEN" \
  -d "{\"username\":\"$USER_TO_ADD\"}" \
  "$GITHUB_API/teams/$GITHUB_TEAM/memberships/$USER_TO_ADD"
      