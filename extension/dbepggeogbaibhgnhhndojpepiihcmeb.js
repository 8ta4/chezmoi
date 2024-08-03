chrome.storage.sync.set({
  exclusionRules: [
    { passKeys: "", pattern: "https?://mail.google.com/*" },
    // 'a' and 's' conflict with Video Speed Controller's keybindings
    // 't' conflicts with YouTube's theater mode
    { passKeys: "ast", pattern: "*" },
  ],
});
