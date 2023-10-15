#!/bin/bash

# Get git diff --cached output
diff=$(git diff --cached)


# Concatenate the output with the string
output="Given the following code diff, write five clear, concise, and informative commit messages that accurately describe the change.\n\nEach message should begin with a capital letter and a verb in the imperative mood.\n\nOutput format:\n\`\`\`\nCommit message 1\nCommit message 2\nCommit message 3\nCommit message 4\nCommit message 5\n\`\`\`\n\nCode diff:\n\`\`\`\n$diff\n\`\`\`"

# Output results as a list, not more than 6 items
echo -e "$output" | pbcopy
