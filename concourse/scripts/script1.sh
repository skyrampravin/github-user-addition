# Your GitHub API token
export GITHUB_TOKEN="{{github-token}}"

# GitHub organization and team information
export GITHUB_ORG="your-organization"
export GITHUB_TEAM="your-team"

# Username of the user to be added to the team
export USER_TO_ADD="username-to-add"

# GitHub API endpoint
GITHUB_API="https://api.github.com"

# Add the user to the team
curl -X PUT \
  -H "Authorization: token $GITHUB_TOKEN" \
  -d "{\"username\":\"$USER_TO_ADD\"}" \
  "$GITHUB_API/teams/$GITHUB_TEAM/memberships/$USER_TO_ADD"
      