class BooksModel {
  final String title;
  final String image;
  final String author;
  final String fileType;

  BooksModel(
      {required this.title,
      required this.image,
      required this.author,
      required this.fileType});
}

List<BooksModel> books = [
  BooksModel(
      title: 'The Chase',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic1.jpg?alt=media&token=e4eb741a-9ecf-452d-be3e-ce33478feb40",
      author: 'Elle Kennedy',
      fileType: 'EPUB'),
  BooksModel(
      author: 'Doug Lowe',
      title: "C++ All-in-one For Dummies",
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic2.jpg?alt=media&token=1381c199-b964-437d-8bfe-db06c5438a16",
      fileType: 'PDF'),
  BooksModel(
      title: 'The Score',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic3.jpg?alt=media&token=348f7628-bebc-4e76-8bb0-3e22ac9a2842",
      author: 'Elle Kennedy',
      fileType: 'EPUB'),
  BooksModel(
      title: 'Harry Potter and the order of Phoenix',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic4.jpg?alt=media&token=52cc0d86-107f-44ca-9841-e292e984b23c",
      author: 'J.K Rowling',
      fileType: 'PDF'),
  BooksModel(
      title: 'Java all-in-one For Dummies',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic5.jpg?alt=media&token=acc8796d-908b-4c7d-9ad3-e555500120f6",
      author: 'Doug Lowe',
      fileType: 'PDF'),
  BooksModel(
      title: 'Django 3 By Example',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic6.jpg?alt=media&token=249d812c-1467-42ae-80cd-472bf30504bd",
      author: 'Antonio Mele',
      fileType: 'PDF'),
  BooksModel(
      title: 'Nova Terra: Liberator',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic7.jpg?alt=media&token=dd0c6b73-9e2d-4e5c-88cd-76c2880194bf",
      author: 'Seth Ring',
      fileType: 'EPUB'),
  BooksModel(
      title: 'Firebase CookBook',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic8.jpg?alt=media&token=248c994c-d393-49bb-a9f7-edce8245f321",
      author: 'George Smith',
      fileType: 'PDF'),
  BooksModel(
      title: 'Flutter Projects',
      image: "https://firebasestorage.googleapis.com/v0/b/fbclone-58a08.appspot.com/o/pic9.jpg?alt=media&token=bfa44100-8ebf-4c53-b23b-b948d9396433",
      author: 'Alexandrio Biessek',
      fileType: 'PDF')
];
