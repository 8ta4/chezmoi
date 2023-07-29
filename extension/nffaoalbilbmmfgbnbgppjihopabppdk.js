chrome.storage.sync.set({
  keyBindings: [
    { action: "display", force: "false", key: 86, predefined: true, value: 0 },
    { action: "slower", force: "false", key: 65, predefined: true, value: 0.1 },
    { action: "faster", force: "false", key: 83, predefined: true, value: 0.1 },
    { action: "rewind", force: "false", key: 90, predefined: true, value: 10 },
    { action: "advance", force: "false", key: 88, predefined: true, value: 10 },
    { action: "reset", force: "false", key: 82, predefined: true, value: 1 },
    { action: "fast", force: "false", key: 71, predefined: true, value: 1.8 },
  ],
});

chrome.storage.sync.set({ audioBoolean: true });
