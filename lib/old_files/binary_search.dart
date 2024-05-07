void main() {
  List<int> list = [
    1,
    2,
    3,
    4,
    5,
    6,
    53,
    637,
    77,
    12,
    52,
    57,
    135,
    63,
    7534,
    632,
    42,
    90,
    13,
    11,
    567,
    21,
    46,
    17,
    58,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  int target = 567;
  printbinSearch(list, target);
}

void printbinSearch(List<int> list, int target) {
  int result = binSearch(list, target);
  if (result < 0) {
    // ignore: avoid_print
    print("Target $target is not found in the list.");
  } else {
    // ignore: avoid_print
    print("Target $target is found at index $result");
  }
}

int binSearch(List<int> list, int target) {
  list = list..sort();
  int lIndex = list.length - 1;
  int fIndex = 0;

  while (fIndex < lIndex) {
    int mid = (lIndex + fIndex) ~/ 2;
    if (target == list[mid]) {
      return mid;
    } else if (target > list[mid]) {
      fIndex = mid + 1;
    } else {
      lIndex = mid - 1;
    }
  }

  return -1;
}
