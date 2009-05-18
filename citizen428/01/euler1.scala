object Problem1 {
  def main(args: Array[String]) {
    val array = 3 until 1000 filter (x => (x % 3 == 0 || x % 5 == 0)) 
    println(array.foldLeft(0)(_+_))
  }
}