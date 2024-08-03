chrome.storage.sync.set({
  // 'a' and 's' conflict with Video Speed Controller's keybindings
  // 't' conflicts with YouTube's theater mode
  exclusionRules:
    '[{"pattern":"https?://mail.google.com/*","passKeys":""},{"pattern":"*","passKeys":"ast"}]',
});
