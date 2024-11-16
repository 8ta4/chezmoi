chrome.storage.sync.set({
  exclusionRules: [
    { passKeys: "", pattern: "https?://mail.google.com/*" },
    {
      passKeys:
        "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL:\"ZXCVBNM<>?",
      pattern: "*",
    },
  ],
});
