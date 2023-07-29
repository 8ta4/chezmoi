chrome.storage.sync.set({
  // Certain keys are disabled to prevent conflicting with Video Speed Controller's keybindings
  exclusionRules:
    '[{"pattern":"https?://mail.google.com/*","passKeys":""},{"pattern":"*","passKeys":"arsxz"}]',
});
