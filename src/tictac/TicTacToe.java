package tictac;

import java.util.Scanner;

public class TicTacToe {
	String[][] board =  {{" ", "|", " ", "|", " "},
					   {"-", "+", "-", "+", "-"},
					   {" ", "|", " ", "|", " "},
					   {"-", "+", "-", "+", "-"},
					   {" ", "|", " ", "|", " "},};
	private String p1, p2;
	
	public TicTacToe() {
		p1 = "X";
		p2 = "O";
	}
	
	public void play() {
		String player = p1;
		int moves = 0;
		
		do {
			displayBoard();
			move(player);
			if (player == p1) {
				player = p2;
			} else {
				player = p1;
			}
		} while (moves <= 9 && winner() == " ");
		displayBoard();
		System.out.println("Winner: " + winner());
		
	}
	
	private void displayBoard() {
		for(int row = 0; row < board.length; row++) {
			for(int col = 0; col < board.length; col++) {
				System.out.print(board[row][col]);
			}
			System.out.println();
		}
	}
	
	private void move(String player) {
		Scanner input = new Scanner(System.in);
		boolean valid = false;
		int row, col;
		
		do {
			System.out.println("Enter row (0-2): ");
			row = input.nextInt();
			System.out.println("Enter column (0-2): ");
			col = input.nextInt();
			if ((row >= 0 && row <= 2 && col >= 0 && col <= 2) && 
				 board[row * 2][col * 2].equals(" ")) {
				
				board[row * 2][col * 2] = player;
				valid = true;
			} else {
				System.out.println("Invalid move.");			
				
			}
		} while (!valid);
	}
	
	private String winner() {
		for(int row = 0; row <= 2; row++) {
			if (board[row * 2][0].equals(board[row * 2][2]) && 
			    board[row * 2][2].equals(board[row * 2][4]) &&
			    !(board[row * 2][0].equals(" "))) {
				
				return(board[row * 2][0]);
			}
		}
		
		for(int col = 0; col <= 2; col++) {
			if (board[0][col * 2].equals(board[2][col * 2]) && 
			    board[2][col * 2].equals(board[4][col * 2]) &&
			    !(board[0][col * 2].equals(" "))) {
				
				return(board[0][col * 2]);
			}
		}
		
		if (board[0][0].equals(board[2][2]) && 
		    board[2][2].equals(board[4][4]) && !(board[0][0].equals(" "))) {

			return(board[0][0]);
		}
		 
		if (board[0][4].equals(board[2][2]) && 
			board[2][2].equals(board[4][0]) &&
			!(board[0][4].equals(" "))) {
			
			return(board[0][4]);
		}
		return(" ");
	}
}