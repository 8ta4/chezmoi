chrome.storage.local.set({
  redirects: [
    {
      appliesTo: ["main_frame"],
      description:
        "Example redirect, try going to http://example.com/anywordhere",
      disabled: false,
      error: null,
      exampleResult:
        "https://google.com/search?q=some-word-that-matches-wildcard",
      exampleUrl: "http://example.com/some-word-that-matches-wildcard",
      excludePattern: "",
      grouped: false,
      includePattern: "http://example.com/*",
      patternDesc:
        "Any word after example.com leads to google search for that word.",
      patternType: "W",
      processMatches: "noProcessing",
      redirectUrl: "https://google.com/search?q=$1",
    },
    // https://github.com/einaregilsson/Redirector#use-duckduckgocom-bangs-on-google
    {
      appliesTo: ["main_frame"],
      description: "Redirect any Google query with a !bang to DDG",
      disabled: false,
      error: null,
      exampleResult: "https://duckduckgo.com/?q=%21asdfasdf+sadfas",
      exampleUrl:
        "https://www.google.com/search?&ei=-FvkXcOVMo6RRwW5p5DgBg&q=asdfasdf%21+sadfas&oq=%21asdfasdf+sadfas&gs_l=asdfsadfafsgaf",
      excludePattern: "",
      grouped: false,
      includePattern:
        "^(?:https?://)(?:www.)google\\.(?:com|au|de|co\\.uk)/search\\?(?:.*)?(?:oq|q)=([^\\&]*\\+)?((?:%21|!)[^\\&]*)",
      patternDesc: "",
      patternType: "R",
      processMatches: "noProcessing",
      redirectUrl: "https://duckduckgo.com/?q=$1$2",
    },
  ],
});
