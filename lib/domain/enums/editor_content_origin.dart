/// Represent the page from where
/// the ```{something}_editor_page``` was launched
enum EditorContentOrigin {
  /// Somehow for some reason, the origin wasn't provided
  unknown,

  /// @nodoc
  account,

  /// Most probably the ```chapter_editor_page``` was launched
  /// to write a next chapter
  chapter,

  /// @nodoc
  home,
}
