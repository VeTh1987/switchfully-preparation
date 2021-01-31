public class DaysInSeconds {
 public static void main(String[] args) {
  Scanner scanner = new Scanner(System.in);
  int days = scanner.nextInt();
  int seconds = days*24*3600;
  
  System.out.println(seconds);
 }
}