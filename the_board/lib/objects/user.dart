//this is a class for auser account
class CustomUser {
  final String name;
  final String email;
  final String photoUrl;

  CustomUser({this.name, this.email, this.photoUrl});

  //when a user is created, it takes in the GoogleAccount for that user, as well as any authorization headers for making HTTP requests, as well as json representing the user's details.
  //finally, the user's Firestore id (i.e. the id of their firestore document within the users collection) is retrieved, so that it can be used to access their events etc. later  on.
  factory CustomUser.create(String name, String email, String photoUrl) {
    return CustomUser(
      name: name,
      email: email,
      photoUrl: photoUrl,
    );
  }
}
