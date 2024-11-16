chrome.storage.sync.set({
  exclusionRules: [
    { passKeys: "", pattern: "https?://mail.google.com/*" },
    // https://github.com/philc/vimium/issues/3190
    // Vimium doesn't support direct whitelisting of sites where it should be disabled.
    // This is a workaround that passes through almost all keyboard shortcuts to the website
    // by listing most common keys as "passKeys". This effectively disables Vimium's
    // keyboard shortcuts globally, except for a few specific keys not listed here.
    // The key order follows the physical MacBook Pro keyboard layout from left to right, top to bottom.
    {
      passKeys:
        "1234567890-=qwertyiop\\ashl;'zxcvbnm,./~!@#$%^&*()_+QERTYUIOP{}|ASDFHJKL:\"ZXCVBNM?",
      pattern: "*",
    },
  ],
});
