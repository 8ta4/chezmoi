chrome.storage.sync.set({
  keyBindings: [
    { action: "display", force: "false", key: 86, predefined: true, value: 0 },
    // Q is assigned to decrease speed. This is because A and Q are typed using the same finger and rewind and decreasing speed are analogous.
    { action: "slower", force: "false", key: 81, predefined: true, value: 0.1 },
    // W is assigned to increase speed. This is because W and S are typed using the same finger and fast forward and increasing speed are analogous.
    { action: "faster", force: "false", key: 87, predefined: true, value: 0.1 },
    // A is assigned to rewind. This is because it's on the left and rewind is often associated with going back or left.
    { action: "rewind", force: "false", key: 65, predefined: true, value: 10 },
    // S is assigned to fast forward. This is because it's on the right and fast forward is often associated with going forward or right.
    { action: "advance", force: "false", key: 83, predefined: true, value: 10 },
    // E is assigned to reset speed. Q, W, and E are on the same row and are used for controlling speed. E was chosen over C to avoid conflict with YouTube's closed caption shortcut.
    { action: "reset", force: "false", key: 69, predefined: true, value: 1 },
    { action: "fast", force: "false", key: 71, predefined: true, value: 1.8 },
  ],
});
chrome.storage.sync.set({ audioBoolean: true });
