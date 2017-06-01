import java.util.Scanner;


public class test5 {

	public static void main(String[] args) {
	  
		int N;
		String NR="";
		
		Scanner input = new Scanner(System.in);
		
		System.out.print("정수 N입력을 입력하세요.");
		N = input.nextInt();
		
		int temp = N;
		while(temp != 0 ){
		   NR += temp%10;
		   temp = temp/10;
		}
		
		System.out.println("N + NR = "+ Integer.parseInt(N) + Integer.parseInt(NR));
	}

}
