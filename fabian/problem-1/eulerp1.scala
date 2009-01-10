package tecc

/* TECC - s. http://projecteuler.net/index.php?section=problems&id=1 */
  
object euler {
  
  def p1(n : Int):Int = n match {
    case 0 => return 0;
    case _ => if (n % 3 == 0 || n % 5 == 0) return n + p1(n-1) else return p1(n-1)
    
  }
  
  def p1endrec(n : Int, sum : Int):Int = n match {
    case 0 => return sum;
    case _ => if (n % 3 == 0 || n % 5 == 0) return p1endrec(n-1, sum + n) else return p1endrec(n-1, sum)
  }
    
  // TODO: use folding func.
  
  def main(args: Array[String]) {
    println("Problem 1 Solution is: " + p1endrec(1000, 0)) 
  }

}
