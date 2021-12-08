object CollatzCalculator {
    fun computeStepCount(n: Int): Int {

        require(n > 0){"Only positive numbers are allowed"}

        return when{
          n == 1 -> 0
          n % 2 == 0 -> 1 + computeStepCount(n/2)
          else -> 1 + computeStepCount(n * 3 + 1)
        }
    }
}
