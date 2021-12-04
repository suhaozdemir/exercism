object Pangram {

    fun isPangram(input: String): Boolean = ('a'..'z').all {it in input.toLowerCase()}
    //src: https://www.techiedelight.com/check-if-string-contains-only-alphabets-kotlin/
}
