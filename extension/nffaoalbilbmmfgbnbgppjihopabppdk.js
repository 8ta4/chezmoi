chrome.storage.sync.set({
  keyBindings: [
    { action: "display", force: "false", key: 86, predefined: true, value: 0 },

    // Modified 'slower' speed key
    // Originally, the 'slower' speed was bound to 's'
    // But 's' was moved to 'a' to maintain relative positions because 'faster' was moved to 's'
    // This was done to avoid conflicting with Vimium's 'd' key
    { action: "slower", force: "false", key: 65, predefined: true, value: 0.1 },

    // Modified 'faster' speed
    // Originally, the 'faster' speed was bound to 'd' (ASCII)
    // But it was moved to 's' (ASCII: 83) to avoid conflicting with Vimium's 'd' key
    { action: "faster", force: "false", key: 83, predefined: true, value: 0.1 },

    { action: "rewind", force: "false", key: 90, predefined: true, value: 10 },
    { action: "advance", force: "false", key: 88, predefined: true, value: 10 },
    { action: "reset", force: "false", key: 82, predefined: true, value: 1 },
    { action: "fast", force: "false", key: 71, predefined: true, value: 1.8 },
  ],
});

chrome.storage.sync.set({ audioBoolean: true });
