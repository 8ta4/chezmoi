#!/bin/bash

# Get git diff --cached output
diff=$(git diff --cached)

# Concatenate the output with the string
output="Given the following code diff, write five clear, concise, and informative commit messages that accurately describe the change.\n\nEach message should begin with a capital letter and a verb in the imperative mood.\n\n\`\`\`\n$diff\n\`\`\`"

# Output results as a list, not more than 6 items
echo -e "$output" | pbcopy
