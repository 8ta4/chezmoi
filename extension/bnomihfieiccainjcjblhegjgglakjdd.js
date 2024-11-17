// The key 'C' is chosen as a mnemonic for 'Chapters'
chrome.storage.local.set({
  shortcut_chapters: {
    alt: false,
    ctrl: false,
    keys: { 67: { code: "KeyC", key: "C" } },
    shift: true,
    wheel: 0,
  },
});
// The key 'T' is chosen as a mnemonic for 'Transcript'
chrome.storage.local.set({
  shortcut_transcript: {
    alt: false,
    ctrl: false,
    keys: { 84: { code: "KeyT", key: "T" } },
    shift: true,
    wheel: 0,
  },
});
chrome.storage.local.set({ header_position: "hover_on_video_page" });
chrome.storage.local.set({ forced_theater_mode: true });
chrome.storage.local.set({ related_videos: "hidden" });
chrome.storage.local.set({ player_hide_endscreen: true });
chrome.storage.local.set({ player_play_button: true });
chrome.storage.local.set({ player_previous_button: true });
chrome.storage.local.set({ player_next_button: true });
chrome.storage.local.set({ player_subtitles_button: true });
chrome.storage.local.set({ player_miniplayer_button: true });
chrome.storage.local.set({ player_view_button: true });
chrome.storage.local.set({ player_screen_button: true });
chrome.storage.local.set({ subscribe: "hidden" });
