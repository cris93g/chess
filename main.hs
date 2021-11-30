module Chess where

type Board = [[Square]]

type Square = Maybe Piece

data Piece = Piece PColor PType

data PColor = White | Black

data PType = Pawn | Knight | Bishop | Rook | Queen | King

-- sHOW PIECE IN FEN notation
showPiece :: Piece -> Char
showPiece (Piece White Pawn) = 'P'
showPiece (Piece White Knight) = 'n'
showPiece (Piece White Bishop) = 'B'
showPiece (Piece White Rook) = 'R'
showPiece (Piece White Queen) = 'Q'
showPiece (Piece White King) = 'K'
showPiece (Piece Black Pawn) = 'p'
showPiece (Piece Black Knight) = 'n'
showPiece (Piece Black Bishop) = 'b'
showPiece (Piece Black Rook) = 'r'
showPiece (Piece Black Queen) = 'q'
showPiece (Piece Black King) = 'k'

main :: IO ()
main = print $ showPiece (Piece White Pawn)