chrome.storage.sync.set({
  "tabliss/config/background": {
    display: { blur: 0, luminosity: -0.2 },
    id: "id",
    key: "background/colour",
  },
});
chrome.storage.sync.set({ "tabliss/config/data/id": { colour: "#000000" } });
chrome.storage.sync.set({ "tabliss/config/widget/default-time": null });
chrome.storage.sync.set({ "tabliss/config/widget/default-greeting": null });
