chrome.storage.sync.set({
  exclusionRules: [
    { passKeys: "", pattern: "https?://mail.google.com/*" },
    // 't' conflicts with YouTube's theater mode
    { passKeys: "t", pattern: "*" },
  ],
});
