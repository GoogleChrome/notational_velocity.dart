library nv.config;

const Map<String, String> INITIAL_NOTES = const {
  'Credits' : 'Kevin Moore - kevin@thinkpixellab.com',
  'About Notational Velocity' : 'https://en.wikipedia.org/wiki/Notational_Velocity',
  'About app' : 'File issues here: https://github.com/GoogleChrome/notational_velocity.dart/issues',
  'How does this thing work?' : '''Always begin typing in the upper search area. Press return to add a new note with that title. While you type, NV searches for notes whose body or title contain your words. Observe that naming a note and searching always occur simultaneously.

When you select one of the found notes (e.g., using the up/down keys) NV displays its body in the lower text area (what you're reading now).

If you had typed the beginning of a note's title, NV would have selected that note automatically.

To create another note, just start typing in the search area again (press ⌘-L to get there from the Keyboard). Don't worry, you won't rename your note--for that you'll either need to double-click its title in the list of notes or press ⌘-R.

But NV won't let me save my changes!
NV constantly writes your changes to disk as you create and edit notes, so there's no need to "Save" anything manually.
'''
};
