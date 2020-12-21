String getCapitalized(String wordToCapitalize) {
  if (wordToCapitalize.length > 0) {
    wordToCapitalize = '${wordToCapitalize[0].toUpperCase()}${wordToCapitalize.substring(1)}';
  }
  return wordToCapitalize;
}
