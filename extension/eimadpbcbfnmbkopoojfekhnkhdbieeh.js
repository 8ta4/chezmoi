// https://github.com/darkreader/darkreader/issues/11452
chrome.storage.sync.set({
  customThemes: [
    {
      theme: {
        brightness: 100,
        contrast: 100,
        darkColorScheme: "Default",
        darkSchemeBackgroundColor: "#181a1b",
        darkSchemeTextColor: "#e8e6e3",
        engine: "staticTheme",
        fontFamily: "Helvetica Neue",
        grayscale: 0,
        immediateModify: false,
        lightColorScheme: "Default",
        lightSchemeBackgroundColor: "#dcdad7",
        lightSchemeTextColor: "#181a1b",
        mode: 1,
        scrollbarColor: "",
        selectionColor: "auto",
        sepia: 0,
        styleSystemControls: false,
        stylesheet: "",
        textStroke: 0,
        useFont: false,
      },
      url: ["dictionary.cambridge.org"],
    },
  ],
});
