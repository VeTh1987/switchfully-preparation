import java.util.Scanner;

public class ReverseString {
    
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            String text = scanner.nextLine();
            char[] arr = text.toCharArray();
            String reversedText = "";
            for(int i = arr.length-1; i >= 0 ; i--) {
                 reversedText += arr[i];
            }

            System.out.println(reversedText);
        }
}