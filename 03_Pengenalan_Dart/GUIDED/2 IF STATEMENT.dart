void main(){

  var open = 8;
  var close = 17;
  var now = 13;

  if (now == 12){
    print("toko sedang istirahat!");
  } else if (now > open&& now < close) {
    print("toko buka!");
  }
  else {
    print("toko tutup");
  }
}