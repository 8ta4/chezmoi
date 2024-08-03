#!/bin/bash

diff=$(git diff --cached)
output="Given the following code diff, write five clear, concise, and informative commit messages that accurately describe the change.\n\nEach message should begin with a capital letter and a verb in the imperative mood.\n\n\`\`\`\n$diff\n\`\`\`"
echo -e "$output" | pbcopy