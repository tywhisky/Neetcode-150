import scala.collection.mutable.Set

object Solution {
    def isValidSudoku(board: Array[Array[Char]]): Boolean = {
        val rows = Array.fill(board.size){Set[Int]()}
        val cols = Array.fill(board(0).size){Set[Int]()}
        val boxes = Array.fill(3){Array.fill(3){Set[Int]()}}
        var v: Char = '.'

        for (i <- 0 until board.size){
            for (j <- 0 until board(0).size) {
               v = board(i)(j)
               if (v != '.') {
                   if (rows(i).find(_==v).nonEmpty || cols(j).find(_==v).nonEmpty || boxes(i/3)(j/3).find(_==v).nonEmpty){
                       return false
                   } else {
                       rows(i).add(v)
                       cols(j).add(v)
                       boxes(i/3)(j/3).add(v)
                   }
               }
            }
        }

        return true
    }
}
