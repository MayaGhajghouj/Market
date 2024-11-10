///  convert the googleDrive url to readable url
String convertToDirectLink(String googleDriveLink) {
  // Check if the link contains "file/d/"
  if (googleDriveLink.contains("/file/d/")) {
    final fileId = googleDriveLink.split("/file/d/")[1].split("/")[0];
    return "https://drive.google.com/uc?export=view&id=$fileId";
  }
  return googleDriveLink; // Return the original if it's already a direct link
}
