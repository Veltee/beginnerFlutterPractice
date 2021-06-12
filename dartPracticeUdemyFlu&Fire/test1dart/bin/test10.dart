//Section 2. Introduction to dart. Number 40, 41
//enum
//switch

void main() {
  printEr(NetworkError.badURL);
}

enum NetworkError {
  badURL,
  timeout,
  resourceNotAvailable,
}

void printEr(NetworkError error) {
  //
  // if (error == NetworkError.badURL) {
  //   print('bad url');
  // } else if (error == NetworkError.timeout) {
  //   print('timeout');
  // } else if (error == NetworkError.resourceNotAvailable) {
  //   print('resource not available');
  // }

  switch (error) {
    case NetworkError.badURL:
      print('bad url');
      break;
    case NetworkError.timeout:
      print('timeout');
      break;
    case NetworkError.resourceNotAvailable:
      print('resource not available');
      break;
  }
}
