library nv.models;

import 'package:bot/bot.dart';
import 'package:meta/meta.dart';

class Note {
  final String title;
  final NoteContent content;
  final DateTime lastModified;

  Note(this.title, this.lastModified, this.content) {
    assert(title != null);
    assert(content != null);
    assert(lastModified != null);
  }

  factory Note.now(String title, NoteContent content) =>
      new Note(title, new DateTime.now(), content);

  String get key => title.toLowerCase();

  @override
  bool operator ==(other) =>
      other is Note &&
      other.title == title &&
      other.content == content &&
      other.lastModified == lastModified;

  int get hashCode => Util.getHashCode([title, content, lastModified]);

  @override
  String toString() => 'Note: $title';
}

abstract class NoteContent {

}

class TextContent extends NoteContent {
  final String value;

  TextContent(this.value) {
    assert(value != null);
  }

  bool operator ==(other) =>
      other is TextContent && other.value == this.value;

  int get hashCode => value.hashCode;

  String toString() =>
      (value.length > 30) ? "${value.substring(0, 27)}..." : value;

  static const _MAX_TO_STRING_LENGTH = 30;
}
