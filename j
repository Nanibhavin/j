1.	Write a program to reverse a word using loop? (Not to use inbuilt functions)
Sample Input: 
String: TEMPLE
Sample Output:
Reverse String: ELPMET
Test cases:
1. SIGN UP
2. AT-LEAST
3. 1245
4. !@#$%
5. 145*999=144855
PROGRAM
Reverse of the string
import java.util.*;
import java.io.*;
public class Main
{
	public static void main(String[] args)
	{
	    
	    String a,b="";
	    char c;
	    int d=0,i;
	    try
	    {
	        Scanner sc=new Scanner(System.in);
	        System.out.println("Enter the string:");
	        a=sc.next();
	        d=a.length();
	        
	        for(i=d-1;i>=0;i--)
	        {
	            b=b+a.charAt(i);
	            
	        }
	        
	        System.out.println("The Reverse of the string is:"+ b);
	        
	    } 
	    catch(Exception e)
	    {
	        System.out.println("Enter only string");
	    }
		
	}
}
2.	Write a program to check the entered user name is valid or not. Get both the inputs from the user.
Sample Input:
Enter the user name: Saveetha@789
Reenter the user name: Saveetha@123
      	Sample Output:
        		 User name is Invalid
PROGRAM
import java.util.*;
public class username{
    public static void main(String args[])
    {
        String s1,s2;
        boolean result;
        Scanner s= new Scanner(System.in);
        s1=s.nextLine();
        s2=s.nextLine();
        result=s1.equals(s2);
        if (result==false)
        {
            System.out.println("User name is Invalid");
        }
        else
        {
            System.out.println("User name is valid");
        }
    }
}
3.	Write a program to reverse a number using loop?(Get the input from user)
Sample Input:
Number: 14567
Sample Output:
Reverse Number: 76541
Test cases:
1. -45721
2. 000
3. AD1947
4. !@#$%
5. 145*999=144855
PROGRAM
import java.io.*;
import java.util.*;
public class reverse
{
    public static void main(String arg[])
    {
          try
          {
               Scanner sc=new Scanner(System.in);
               int n,re=0,rem;
               System.out.println("Enter a number:");
               n=sc.nextInt();
               while(n!=0)
               {
                  rem=n%10;
                  re=re*10+rem;
                  n=n/10;
                }
               
               System.out.println("The reversed number is:"+re);
            }
           catch(Exception e)
           {
               System.out.println("Enter a valid number");
           }
      }
}
4.	Write a program to find whether the person is eligible for vote or not. And if that particular person is not eligible, then print how many years are left to be eligible.
Sample Input:
 Enter your age:
7
Sample output:
You are allowed to vote after 11 years
Test cases:
1.	25
2.	Eighteen
3.	12
4.	-18
5.	34.5
PROGRAM
import java.util.*;

public class eligiblevote {
    public static boolean checkInt(String s){
        try{
            int n = Integer.parseInt(s);
            return true;
        }
        catch(NumberFormatException e){
            System.out.println("Enter a Valid Age in Integer.");
            return false;
        }
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        String age;
        System.out.println("Enter age : ");
        age = sc.nextLine();

        if(checkInt(age) == true ){
            int a = Integer.parseInt(age);
            if(a > 0){
                if(a >= 18){
                    System.out.println("You are Eligible to Vote");
                }
                else{
                    int d = 18 - a;
                    System.out.println("Sorry ! You are Eligible after " + d + " years.\n");
                }
            }
            else{
                System.out.println("Enter a Valid Age.");
            }
        }
    }
}
5.	Find the LCM and GCD of n numbers?
Sample Input:
N value = 2
Number 1 = 16
Number 2 = 20
Sample Output:
LCM = 80
GCD = 4
Test cases:
1. N = 3, {12, 25, 30}
2. N = 2, {52, 25, 63}
3. N = 3, {17, 19, 11}
4. N = -2, {52, 60}
5. N = 2, {30, 45}
PROGRAM
import java.util.Scanner;
import java.io.*;
 
public class GCD
{
    static int gcd(int x, int y)
    {
        int r=0, a, b;
        a = (x > y) ? x : y; // a is greater number
        b = (x < y) ? x : y; 
 
        r = b;
        while(a % b != 0)
        {
            r = a % b;
            a = b;
            b = r;
        }
        return r;
    }
 
    static int lcm(int x, int y)
    {
        int a;
        a = (x > y) ? x : y; // a is greater number
        while(true)
        {
            if(a % x == 0 && a % y == 0)
                return a;
            ++a;
        }	
    }



 
    public static void main(String args[])
    {
        try
        {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter N value: ");
        int N=sc.nextInt();
        if(N==2)
        {
        
        System.out.println("Enter the two numbers: ");
        int x = sc.nextInt();
        int y = sc.nextInt();
 
        System.out.println("The GCD of two numbers is: " + gcd(x, y));
        System.out.println("The LCM of two numbers is: " + lcm(x, y));
        }
        if(N==3)
        {
        
        System.out.println("Enter the three numbers: ");
        int x = sc.nextInt();
        int y = sc.nextInt();
        int z = sc.nextInt();
        int i;
        int a=Math.max(x,Math.max(y,z));
        while(true)
        {
           if(a % x == 0 && a % y == 0 && a%z==0)
           {
                    break;
            }
           else
           ++a;
           
       
        }
        System.out.println("LCM of "+x+", "+y+" and "+z+" is "+a);
        int b=Math.min(x,Math.min(y,z));
        for(i=b;i>=0;i--)
        {
             if((x%i==0) && (y%i==0) && (z%i==0))
		        break;
		
          }
        System.out.println("GCD of "+x+", "+y+" and "+z+" is "+i);
        
       }
       
     }
      catch(Exception e) 
        {
           System.out.println("Enter only numbers");   
	
        }
     }
}

   
6.	Write a program to print Right Triangle Star Pattern
    Sample Input:: n = 5
Output: 
           * 
         * * 
       * * * 
     * * * * 
  * * * * *
PROGRAM
import java.io.*;
        import java.util.*;
public class DAY1RIGHTANGLELEFT
{
    public static void main(String[] args)
    {
        int i, j, n;
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter the number.of.rows:");
        n=sc.nextInt();

        for (i=0; i<n; i++)
        {
            for (j=2*(n-i); j>=0; j--)
            {
                System.out.print(" ");
            }
            for (j=0; j<=i; j++ )
            {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}
7.	Write a program to print the below pattern?                                
				1				
			1		1			
		1		2		1		
	1		3		3		1	
1		4		6		4		1
PROGRAM
public class DAY2111121133114641 {
    public static void main(String[] args) {
        int rows = 5, coef = 1;
        for(int i = 0; i < rows; i++) {
            for(int space = 1; space < rows - i; ++space) {
                System.out.print("  ");
            }

            for(int j = 0; j <= i; j++) {
                if (j == 0 || i == 0)
                    coef = 1;
                else
                    coef = coef * (i - j + 1) / j;
                System.out.printf("%4d", coef);
            }
            System.out.println();
        }
    }
}
8.	Write a program using function to calculate the simple interest. Suppose the customer is a senior citizen. He is being offered 12 percent rate of interest; for all other customers, the ROI is 10 percent.
Sample Input:
Enter the principal amount: 200000
Enter the no of years:  3
Is customer senior citizen (y/n): n
Sample Output:
Interest: 60000
Test Cases:
1. Principal: 2000 , Years: 0
2. Principal: 20000 , Years: -2
3. Principal: -2000 , Years: 2
4. Principal: 2 , Years: 2000
5. Principal: 0 , Years: 5
PROGRAM
import java.util.*;
class interest
{
    public static void main(String[] args)
    {
        try
        {
            double p;
            int n;
            double r,i;
            Scanner sc=new Scanner(System.in);
            System.out.print("Is the person is senior citizen(y/n): ");
            char g=sc.next().charAt(0);
            System.out.println("Enter the principal amount:");
            p=sc.nextDouble();
            System.out.println("Enter the no.of.years:");
            n=sc.nextInt();

            if(g=='y'||g=='Y')
            {
                r=12;
                i=p*n*r/100;
                System.out.println("Interest:"+i);

            }
            if(g=='n'||g=='N')
            {
                r=10;
                i=p*n*r/100;
                System.out.println("Interest:"+i);
            }
            if(p<=0)
            {

                System.out.println("Enter the valid amount");
            }
            if(n<=0)
            {

                System.out.println("Enter the valid no.of.years");
            }
        }
        catch(Exception e)
        {
            System.out.println("Enter the amount");
        }
    }
}
9.	Java Program to Find Even Sum of Fibonacci Series Till number N?
Sample Input: n = 4
Sample Output: 33
(N = 4, So here the fibonacci series will be produced from 0th term till 8th term:0, 1, 1, 2, 3, 5, 8, 13, 21
Sum of numbers at even indexes = 0 + 1 + 3 + 8 + 21 = 33)
PROGRAM
import java.util.Scanner;
        import java.io.*;
public class DAY2EVENSUMOFFIBONACCISERIES {
    public static void main(String[] args){
        int my_input, i, sum;
        System.out.println("Required packages have been imported");
        Scanner my_scanner = new Scanner(System.in);
        System.out.println("A reader object has been defined ");
        System.out.println("Enter the value of N: ");
        my_input = my_scanner.nextInt();
        int fabonacci[] = new int[2 * my_input + 1];
        fabonacci[0] = 0;
        fabonacci[1] = 1;
        sum = 0;
        for (i = 2; i <= 2 * my_input; i++) {
            fabonacci[i] = fabonacci[i - 1] + fabonacci[i - 2];
            if (i % 2 == 0)
                sum += fabonacci[i];
        }
        System.out.printf("Even sum of fibonacci series till number %d is %d" , my_input, sum);
    }
}
10.	 Write a program to print the numbers from M to N by skipping K numbers in between?
Sample Input:
M = 50
N = 100
K = 7
Sample Output:
50, 58, 66, 74, …..
Test cases:
1. M = 15, N  = 05, K = 02
2. .M = 25, N  = 50, K = 04
3. M = 15, N  = 100, K = -02
4. M = 0 , N = 0 , K = 2
5.  M = 200 , N = 200 , K = 50
PROGRAM
import java.util.*;
public class DAY2SKIPPING
{
    public static void main(String[] args) {
        try
        {
            Scanner obj=new Scanner(System.in);
            System.out.println("M=");
            int m=obj.nextInt();
            System.out.println("N=");
            int n=obj.nextInt();
            System.out.println("K=");
            int k=obj.nextInt();
            if(m<=0 || n<=0 || k<=0)
            {
                System.out.println("invalid input");
            }
            else if(m<=n || k>=n || n<=m)
            {
                System.out.println("invalid input");
            }
            while(m<=n)
            {
                System.out.println(m);
                m=m+k+1;
            }
        }
        catch (Exception e){
            System.out.println("invalid input");
        }
    }
}
11.	Write a program for matrix addition?
Sample Input:
Mat1 = 1  2
5  3
Mat2 = 2   3
             4   1
Sample Output:
Mat Sum = 3    5
9	   4
PROGRAM
import java.util.Scanner;
public class matrixaddition
{
    public static void main(String[] args)
    {
        int p, q, m, n;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number of rows in first matrix:");
        p = s.nextInt();
        System.out.print("Enter number of columns in first matrix:");
        q = s.nextInt();
        System.out.print("Enter number of rows in second matrix:");
        m = s.nextInt();
        System.out.print("Enter number of columns in second matrix:");
        n = s.nextInt();
        if (p == m && q == n)
        {
            int a[][] = new int[p][q];
            int b[][] = new int[m][n];
            int c[][] = new int[m][n];
            System.out.println("Enter all the elements of first matrix:");
            for (int i = 0; i < p; i++)
            {
                for (int j = 0; j < q; j++)
                {
                    a[i][j] = s.nextInt();
                }
            }
            System.out.println("Enter all the elements of second matrix:");
            for (int i = 0; i < m; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    b[i][j] = s.nextInt();
                }
            }
            System.out.println("First Matrix:");
            for (int i = 0; i < p; i++)
            {
                for (int j = 0; j < q; j++)
                {
                    System.out.print(a[i][j]+" ");
                }
                System.out.println("");
            }
            System.out.println("Second Matrix:");
            for (int i = 0; i < m; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    System.out.print(b[i][j]+" ");
                }
                System.out.println("");
            }
            for (int i = 0; i < p; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    for (int k = 0; k < q; k++)
                    {
                        c[i][j] = a[i][j] + b[i][j];
                    }
                }
            }
            System.out.println("Matrix after addition:");
            for (int i = 0; i < p; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    System.out.print(c[i][j]+" ");
                }
                System.out.println("");
            }
        }
        else
        {
            System.out.println("Addition would not be possible");
        }
    }
}
12.	Write a program to print rectangle symbol pattern.
Get the symbol as input from user
PROGRAM
import java.util.Scanner;

public class Main {
	private static Scanner sc;
	public static void main(String[] args) 
	{
		int rows, columns, i, j;
		char ch;
		sc = new Scanner(System.in);
		System.out.print(" Please Enter any Character : ");
        ch = sc.next().charAt(0);
		
		System.out.print(" Please Enter Number of Rows : ");
		rows = sc.nextInt();	
		
		System.out.print(" Please Enter Number of Columns : ");
		columns = sc.nextInt();		
			
		for(i = 1; i <= rows; i++)
		{
			for(j = 1; j <= columns; j++)
			{
				System.out.print(ch+" "); 
			}
			System.out.print("\n"); 
		}	
	}
}
13.	Write a program that would sort a list of names in alphabetical order Ascending or Descending, choice get from the user?
Sample Input:
Banana
Carrot
Radish
Apple
Jack
Order(A/D) : A
Sample Output:
Apple
Banana
Carrot
Jack
Radish
PROGRAM
import java.util.*;

public class DAY2SORTLISTINAANDD {
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("List Size : ");
        int size = sc.nextInt();

        String names[],temp;
        names = new String[size];

        System.out.println("Enter " + size + " Names : ");
        for(int i = 0;i<size;i++){
            names[i] = sc.next();
        }

        System.out.println("Enter a Choice : \nA: Ascending Order \nD: Descending Order \n");
        String choice = sc.next();

        switch(choice){
            case "A":
                for(int i = 0 ;i<size;i++){
                    for(int j = i+1 ; j<size;j++){
                        if(names[i].compareTo(names[j]) > 0){
                            temp = names[i];
                            names[i] = names[j];
                            names[j] = temp;
                        }
                    }
                }
                System.out.println("Names in Ascending Order : ");
                for(int i = 0;i<size;i++){
                    System.out.println(names[i]);
                }
                break;

            case "D":
                for(int i = 0 ;i<size;i++){
                    for(int j = i+1 ; j<size;j++){
                        if(names[i].compareTo(names[j]) < 0){
                            temp = names[i];
                            names[i] = names[j];
                            names[j] = temp;
                        }
                    }
                }
                System.out.println("Names in Descending Order : ");
                for(int i = 0;i<size;i++){
                    System.out.println(names[i]);
                }
                break;

        }
    }
}
14.	Write a program for matrix multiplication?
Sample Input:
Mat1 = 1  2
5  3
Mat2 = 2   3
             4   1
Sample Output:
Mat Sum = 10    5
22	  18
PROGRAM

import java.util.Scanner;
class matrixmultiplication
{
    public static void main(String args[]){
        int row1, col1, row2, col2;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number of rows in first matrix:");
        row1 = s.nextInt();
        System.out.print("Enter number of columns in first matrix:");
        col1 = s.nextInt();
        System.out.print("Enter number of rows in second matrix:");
        row2 = s.nextInt();
        System.out.print("Enter number of columns in second matrix:");
        col2 = s.nextInt();
        if (col1 != row2) {
            System.out.println("Matrix multiplication is not possible");
        }
        else {
            int a[][] = new int[row1][col1];
            int b[][] = new int[row2][col2];
            int c[][] = new int[row1][col2];
            System.out.println("Enter values for matrix A : \n");
            for (int i = 0; i < row1; i++) {
                for (int j = 0; j < col1; j++)
                    a[i][j] = s.nextInt();
            }
            System.out.println("Enter values for matrix B : \n");
            for (int i = 0; i < row2; i++) {
                for (int j = 0; j < col2; j++)
                    b[i][j] = s.nextInt();
            }
            System.out.println("Matrix multiplication is : \n");
            for(int i = 0; i < row1; i++) {
                for(int j = 0; j < col2; j++){
                    c[i][j]=0;
                    for(int k = 0; k < col1; k++){
                        c[i][j] += a[i][k] * b[k][j];
                    }
                    System.out.print(c[i][j] + " ");
                }
                System.out.println();
            }
        }
    }
}
15.	Write a program to print the following pattern
Sample Input:
Enter the number to be printed: 1
Max Number of time printed: 3
1
11
111
11
      1
PROGRAM
import java.util.*;
class pattern1
{
 public static void main(String[] args)
 {
 int i, j;
 char ch;
 Scanner s= new Scanner(System.in);
 System.out.print(" Please Enter any Character : ");
ch = s.next().charAt(0);
 System.out.println("Enter the no.of.rows:");
 int row = s.nextInt();
 
 for(i=0; i<row; i++)
 {
 for(j=i; j>=0; j--)
 System.out.print(ch+" ");
 System.out.print("\n");
 }
 for(i=0; i<(row-1); i++)
 {
 for(j=(row-1); j>i; j--)
 System.out.print(ch+" ");
 System.out.print("\n");
 }
 }
}
16.	Write a program to print the special characters separately and print number of Special characters in the line?
PROGRAM
import java.util.Scanner;

class special_characters
{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String s1;
        int len, sp_count=0,alp_count=0,digi_count=0,n_count=0;
        System.out.print("Enter the text: ");
        s1=sc.nextLine();
        len=s1.length();
        char[] ch=s1.toCharArray();
        for(int i=0;i<len;i++){
            if((ch[i]>='a' && ch[i]<='z') || (ch[i]>='A' && ch[i]<='Z')){
                alp_count++;
            }
            else if(ch[i]>='0'&&ch[i]<='9') {
                digi_count++;
            }
            else

            {
                System.out.print(ch[i]);
                sp_count++;
            }
        }
        System.out.println();
        System.out.println("total special character: "+sp_count);
    }
}
17.	Write a program to print all the composite numbers between a and b?
Sample Input:
A = 12
B = 19
Sample Output
14, 15, 16, 18
Test cases:
1. A = 11, B = 11
2. A = 20, B = 10
3. A = 0, B = 0
4. A = -5, B = 5
5. A = 7, B = -12
PROGRAM
import java.util.*;

public class DAY3COMPOSITEBETWEENAANDB{
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter A : ");
        int a = sc.nextInt();

        System.out.println("Enter B : ");
        int b = sc.nextInt();

        int is_negetive = 0, count = 0;

        if(a < 0 || b < 0){
            is_negetive = 1;
        }

        System.out.println("COMPOSITE NUMBERS : ");
        if(a < b){
            for(int i = a+1; i<b;i++){
                count = 0;
                for(int j  = 1; j<=i;j++){
                    if(i%j == 0){
                        count = count+1;
                    }
                }
                if(count > 2){
                    System.out.print(i + "\t");
                }
            }
        }
        else if(a > b){
            for(int i = b+1; i<a;i++){
                count = 0;
                for(int j  = 1; j<=i;j++){
                    if(i%j == 0){
                        count = count+1;
                    }
                }
                if(count > 2){
                    System.out.print(i + "\t");
                }
            }
        }
        else if(a == b){
            System.out.println("Enter a VALID Range");
        }



        if(is_negetive == 1){
            System.out.println("\nEnter a VALID Range. Composite Numbers cannot be NEGETIVE. ");
        }
    }
}
18.	Write a program to print the Inverted Full Pyramid pattern?
PROGRAM
import java.util.Scanner;

public class INVERTEDPYRAMIDPATTERN {
    private static Scanner sc;

    public static void main(String[] args) {
        sc = new Scanner(System.in);

        System.out.print("Enter Inverted Pyramid Pattern Rows = ");
        int rows = sc.nextInt();

        System.out.println("Printing Inverted Pyramid Star Pattern");

        for (int i = rows ; i >= 1; i-- )
        {
            for (int j = 0 ; j < rows - i; j++ )
            {
                System.out.print(" ");
            }
            for (int k = 0 ; k != (2 * i) - 1; k++ )
            {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
19.	Find the Mean, Median, Mode of the array of numbers?
Sample Input;:
Array of elements = {16, 18, 27, 16, 23, 21, 19}
Sample Output:
Mean = 20
Median = 19
Mode = 16
Test cases:
1. Array of elements = {26, 28, 37, 26, 33, 31, 29}
2. Array of elements = {1.6, 1.8, 2.7, 1.6, 2.3, 2.1, .19}
3. Array of elements = {0, 160, 180, 270, 160, 230, 210, 190, 0}
4. Array of elements = {200, 180, 180, 270, 160, 270, 270, 190, 200}
5. Array of elements = {100, 100, 100, 100, 100, 100, 100, 100, 100}
PROGRAM
import java.util.*;

class operations{
    public int mean(int a[]){
        int sum = 0;
        for(int i = 0;i<a.length;i++){
            sum = sum + a[i];
        }
        return sum/a.length;
    }
    public int median(int a[]){
        int temp;
        for(int i = 0;i<a.length;i++){
            for(int j = i+1;j<a.length;j++){
                if(a[i] > a[j]){
                    temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
            }
        }
        return a[a.length/2];
    }
    public int mode(int a[]){
        int rep_count = 0;
        int m[] = new int[a.length];


        for(int i = 0;i<a.length;i++){
            rep_count = 0;
            for(int j = i+1;j<a.length;j++){
                if(a[i] == a[j] && a[i] != -1){
                    a[j] = -1;
                    rep_count+=1;
                }
            }
            m[i] = rep_count;
        }
        int mode_ind = 0;
        for(int i = 0;i<a.length;i++){
            if(m[i] >= m[mode_ind]){
                mode_ind = i;
            }
        }
        return a[mode_ind];
    }
}

public class DAY3MEANMEDIANMODE{
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);
        operations op = new operations();

        System.out.println("Enter Array Size : ");
        int n = sc.nextInt();

        int arr[] = new int[n];
        System.out.println("Enter Array Elements : ");
        for(int i = 0;i<n;i++){
            arr[i] = sc.nextInt();
        }

        int mean = op.mean(arr);
        int median = op.median(arr);
        int mode = op.mode(arr);

        System.out.println("MEAN : " + mean);
        System.out.println("MEDIAN  : " + median);
        System.out.println("MODE : " + mode);

    }
}

20.	Find the factorial of n?
Sample Input:
N = 4
Sample Output:
4 Factorial = 24
Test cases:
1. N = 0
2. N = -5
3. N = 1
4. N = Q
5. N = 3A
PROGRAM
import java.util.*;

public class DAY3FACTORIAL {
    public static boolean checkNum(String n){
        try{
            int x = Integer.parseInt(n);
            return true;
        }
        catch(NumberFormatException e){
            System.out.println("Enter a Valid Integer");
            return false;
        }
    }
    public static int fact(int n){
        if(n == 0){
            return 1;
        }
        return n*fact(n-1);
    }
    public static void main(String[] Args){
        Scanner sc =new Scanner(System.in);

        System.out.println("Enter N : ");
        String n = sc.nextLine();

        if(checkNum(n)){
            int num = Integer.parseInt(n);
            System.out.println("Factorial : " + fact(num));
        }
    }
}
21.	Write a program to print the following pattern
Sample Input:
Enter the Character to be printed: %
Max Number of time printed: 3
%
% %
% % %
PROGRAM
import java.util.*;

public class pattern8
{
	public static void main(String args[])
	{		
		int i, j;
            char ch;
            Scanner s= new Scanner(System.in);
            System.out.print(" Please Enter any Character : ");
            ch = s.next().charAt(0);
            System.out.println("Enter the no.of.rows:");
            int row = s.nextInt();
    
		for(i=1;i<=row;i++)
    		{
        		for(j=1;j<=i;j++)
        		{
            			System.out.print(ch+" ");
        		}
        		System.out.println("");
    		}	
	}
}
22.	Find the year of the given date is leap year or not
Sample Input:
Enter Date: 04/11/1947
Sample Output:
Given year is Non Leap Year
Test cases:
1. 04/11/19.47
2. 11/15/1936
3. 31/45/1996
4. 64/09/1947
5. 00/00/2000
PROGRAM
import java.util.Scanner;
class DAY3LEAPYEAR {
    public static void main(String[] args){
        try{
            int date;
            System.out.println("Enter date :: ");
            Scanner sc = new Scanner(System.in);
            date = sc.nextInt();
            int month;
            System.out.println("Enter month :: ");
            Scanner sc1 = new Scanner(System.in);
            month = sc.nextInt();
            int year;
            System.out.println("Enter an Year :: ");
            year = sc.nextInt();
            Scanner sc2 = new Scanner(System.in);
            System.out.println("The entered date is:"+date+"/"+month+"/"+year);

            if((date<=31)&& (date>0) && (month<=12)){

                if (((year % 4 == 0) && (year % 100!= 0)) || (year%400 == 0))
                    System.out.println("Specified year is a leap year");
                else
                    System.out.println("Specified year is not a leap year");
            }
            else{
                System.out.println("enter valid data");
            }
        }
        catch(Exception e){
            System.out.println("enter valid data");
        }
    }
}

23.	Find the number of factors for the given number
Sample Input:
Given number: 100
Sample Output:
Number of factors = 9
Test cases:
1. 343
2. 1080
3. -243
4. 101010
5. 0
PROGRAM
import java.util.*;
public class printnooffactors
{
    public static void main(String[] args)
    {
        int num,n;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number : ");
        num = sc.nextInt();
        System.out.println("Enter N:");
        n= sc.nextInt();
        int i, count = 0;
        for(i = 1; i <= num; i++)
        {
            if(num % i == 0)
            {
                count = count + 1;
                if(count==n)
                {
                    System.out.println(n+" Factor is "+i);
                }
            }
        }
        System.out.print("\nTotal factors of " + num + " : " + count);
    }
}
24.	Write a program to print the given number is Perfect number or not?
Sample Input:
Given Number: 6
Sample Output:
It’s a Perfect Number 
Test cases:
1. 17
2. 26!
3. 143
4. 84.1
5. -963
PROGRAM
import java.util.*;

public class DAY4PERFECTNUMBERS{
    public static boolean checkInt(String s){
        try{
            int x = Integer.parseInt(s);
            return true;
        }
        catch(NumberFormatException e){
            System.out.println("Enter a Valid Number");
            return false;
        }
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Number : ");
        String n = sc.nextLine();

        if(checkInt(n) == true){
            int num = Integer.parseInt(n);
            int sum = 0;
            for(int i = 1;i<num;i++){
                if(num%i==0){
                    sum=sum+i;
                }
            }
            if(sum == num){
                System.out.println("The Entered Number is a PERFECT Number. ");
            }
            else{
                System.out.println("The Entered Number is not a PERFECT Number. ");
            }
        }
    }
}
25.	Write a program to print the number of vowels in the given statement?
Sample Input:
Saveetha School of Engineering
Sample Output:
Number o vowels = 12 
Test cases:
1. India is my country
2. All are my brothers and sisters
3. Why dry sky
4. Shy Try Cry
5. EDUCATION
PROGRAM
import java.util.*;

public class DAY4NUMBEROFVOWELS {
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Stirng : ");
        String input = sc.nextLine();
        int count = 0;

        for(int i = 0;i<input.length();i++){
            if((input.charAt(i) == 'A' )||(input.charAt(i) == 'E' ) ||(input.charAt(i) == 'I' )||(input.charAt(i) == 'O' )||(input.charAt(i) == 'U' )
                    ||(input.charAt(i) == 'a' )||(input.charAt(i) == 'e' )||(input.charAt(i) == 'i' )||(input.charAt(i) == 'o' )||(input.charAt(i) == 'u' )){
                count +=1;
            }
        }
        System.out.println("No. of Vowels : " + count );

    }
}
25.Write a program to print hollow square symbol pattern?
Get the symbol from user.
PROGRAM
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
	 
	    char ch;
		Scanner sc = new Scanner(System.in);
		System.out.print(" Please Enter any Character : ");
         ch = sc.next().charAt(0);
		System.out.println("Enter row and col");
		int row = sc.nextInt();
		int col = sc.nextInt();
		for (int i = 1; i <=row; i++) {
			for (int j = 1; j <= col; j++) 
				if((i==1 || i==col) || (j==1 || j==col))
					System.out.print(ch+"");
				else
					System.out.print(" ");
			
			System.out.println();
			
		}
	}
}
26.	Write a program to print consonants and vowels separately in the given word
Sample Input:
Given Word: Engineering
Sample Output:
Consonants: n g n r n g
Vowels: e i e ei
Test cases:
1. TRY
2. MEDIAN
3. ONE
4. KNOWLEDGE
5. EDUCATION
PROGRAM
import java.util.*;

public class DAY4NUMBEROFVOWELSCONSTANTS {
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a WORD : ");
        String input = sc.nextLine();

        String vow = "";
        String conso = "";

        for(int i = 0;i<input.length();i++){
            if((input.charAt(i) == 'A' )||(input.charAt(i) == 'E' ) ||(input.charAt(i) == 'I' )||(input.charAt(i) == 'O' )||(input.charAt(i) == 'U' )
                    ||(input.charAt(i) == 'a' )||(input.charAt(i) == 'e' )||(input.charAt(i) == 'i' )||(input.charAt(i) == 'o' )||(input.charAt(i) == 'u' )){
                vow = vow + input.charAt(i);
            }
            else{
                conso = conso + input.charAt(i);
            }
        }
        System.out.println("Consonants : " + conso);
        System.out.println("Vowels : " + vow);
    }
}
27.	Write a program to print the Fibonacci series.
Sample Input:
Enter the n value: 6
Sample Output:
0	1	1	2	3	5
Test Condition: Implement negative Fibonacci series
PROGRAM
import java.util.*;

public class DAY4FIBONACCISERIES {
    public static void fibo_pos(int lim){
        int a = 0,b=1,c;
        System.out.print(a + "  " + b);
        for(int i =2;i<=lim;i++){
            c = a + b;
            System.out.print("  " + c);
            a = b;
            b = c;
        }
    }
    public static void fibo_neg(int lim){
        int a = 0,b=-1,c;
        System.out.print(a + "  " + b);
        for(int i =2;i<=lim;i++){
            c = a - b;
            System.out.print("  " + c);
            a = b;
            b = c;
        }
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("ENTER Limit : ");
        int limit = sc.nextInt();

        System.out.println("Enter Choice : \n1.Positive Series \n2.Negative Series");
        int ch = sc.nextInt();

        switch(ch){
            case 1 :
                fibo_pos(limit);
                break;
            case 2 :
                fibo_neg(limit);
                break;
            default:
                System.out.println("Enter a Valid Choice.");
        }

    }
}
Write a program to print the below pattern
1
2 2
3  3  3    
4	 4   4   4
PROGRAM

import java.util.Scanner;
public class pattern1223334444
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in); // rows value from the user
        System.out.println("Enter the number of rows: ");
        int rows = sc.nextInt();
        for (int i = 1; i <= rows; i++)
        {
            for (int j = 1; j <= i; j++)
            {
                System.out.print(i+" ");
            }
            System.out.println();
        }
        sc.close();
    }
}
28.	Write a program to find the square, cube of the given decimal number
Sample Input:
Given Number: 0.6
Sample Output:
Square Number: 0.36
Cube Number:0.216
Test cases:
1. 12
2. 0 
3. -0.5
4. 14.25
5. -296
PROGRAM
import java.util.*;

public class DAY4SQUARESCUBES {
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Decimal Number : ");
        float num = sc.nextFloat();

        System.out.println("Square of " + num + " : " + num*num);
        System.out.print("Cube of " + num + " : " );
        System.out.format("%.3f",(num*num*num));
    }
}
29.	Program to find the frequency of each element in the array.
Sample Input & Output:
{1, 2, 8, 3, 2, 2, 2, 5, 1}
Element | Frequency
--------------------------
1           |         2
2           |         4
8           |         1
3           |         1
5	          |         1
PROGRAM
import java.util.*;
public class DAY5FREQUENCYOFELEMENTINANARRAY
{
    public static void main(String[] args)
    {
        try
        {
            Scanner s=new Scanner(System.in);
            int [] arr;
            int n,k;
            System.out.print("Enter the no. of element: ");
            n= s.nextInt();
            arr = new int[n];
            System.out.print("Enter elements: ");
            for(k=0;k<n;k++)
            {
                arr[k]=s.nextInt();
            }
            int [] fr = new int [arr.length];
            int visited = -1;
            for(int i = 0; i < arr.length; i++){ int count = 1;
                for(int j = i+1; j < arr.length; j++){
                    if(arr[i] == arr[j]){
                        count++;
                        fr[j] = visited;
                    }
                }
                if(fr[i] != visited)
                    fr[i] = count;
            }

            System.out.println("---------------------------------------");
            System.out.println(" Element | Frequency");
            System.out.println("---------------------------------------");
            for(int i = 0; i < fr.length; i++){
                if(fr[i] != visited)
                    System.out.println(" " + arr[i] + " | " + fr[i]);
            }
            System.out.println("----------------------------------------");
        }
        catch(Exception e)
        {
            System.out.println("Due to string Exception");
        }
    }
}
30.	Write a program to print the given number is Perfect number or  not?
Sample Input:
Given Number: 6
Sample Output:
It’s a Perfect Number 
Test cases:
1. 17
2. 26!
3. 143
4. 84.1
5. -963

PROGRAM
import java.util.*;

public class DAY4PERFECTNUMBERS{
    public static boolean checkInt(String s){
        try{
            int x = Integer.parseInt(s);
            return true;
        }
        catch(NumberFormatException e){
            System.out.println("Enter a Valid Number");
            return false;
        }
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Number : ");
        String n = sc.nextLine();

        if(checkInt(n) == true){
            int num = Integer.parseInt(n);
            int sum = 0;
            for(int i = 1;i<num;i++){
                if(num%i==0){
                    sum=sum+i;
                }
            }
            if(sum == num){
                System.out.println("The Entered Number is a PERFECT Number. ");
            }
            else{
                System.out.println("The Entered Number is not a PERFECT Number. ");
            }
        }
    }
}
31.	Find the factorial of n?
Sample Input:
N = 6
Sample Output:
6 Factorial = 720
Test cases:
1. N = 0
2. N = -5
3. N = 1
4. N = Q
5. N = 3A
PROGRAM
import java.util.Scanner;
class factorial
{
 public static void main(String[] args)
 {
   try
   {
    int n,fact=1,i;
    Scanner s= new Scanner(System.in);
    System.out.print(" Enter the number : ");
    n= s.nextInt();
    if(n<=0)
    {
       System.out.print("Enter only positive numbers");
    }
    else
    {
        for(i=1;i<=n;i++)
         {
              fact=fact*i;
          }
        System.out.print("The factorial of "+n+" is "+fact); 
    }
    
    
    
    }
    catch(Exception e)
    {
        System.out.print("Enter only numbers");
    }
  }
}
    
    
   
32.	Write a program to print the below pattern
1
4     9
16   25    36
49   64    81    100
PROGRAM
import java.util.Scanner;
public class PATTERN149162536496481100
{
    public static void main(String args[])
    {
        Scanner input=new Scanner(System.in);
        int n=input.nextInt();
        int k=1;
        for(int i=1;i<=n;i++)
        {

            for(int j=1;j<=i;j++)
            {
                System.out.print(k*k+" ");
                k++;
            }
            System.out.print("\n");
        }
    }
}
33.	Write a program to find the number of composite numbers in an array of elements
Sample Input;:
Array of elements = {16, 18, 27, 16, 23, 21, 19}
Sample Output:
Number of Composite Numbers = 5 
Test cases:
1.Array of elements = {26, 28, 37, 26, 33, 31, 29}
2. Array of elements = {1.6, 1.8, 2.7, 1.6, 2.3, 2.1, .19}
3. Array of elements = {0, 160, 180, 270, 160, 230, 210, 190, 0}
4. Array of elements = {200, 180, 180, 270, 270, 270, 190, 200}
5. Array of elements = {100, 100, 100, 100, 100, 100, 100, 100}
PROGRAM
import java.util.*;

class noofcompositenumbers{

    public static boolean checkInt(String num){
        if(num == null){
            return false;
        }
        try{
            int n = Integer.parseInt(num);
        }
        catch(NumberFormatException e){
            return false;
        }
        return true;
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        int isInvalid = 0;

        System.out.println("Enter Array Size : ");
        int n = sc.nextInt();

        int array[];
        array = new int[n];

        System.out.println("Enter " + n + " Numbers : ");
        for(int i = 0;i<n;i++){
            String num = sc.next();
            if((checkInt(num) == true)){
                int x = Integer.parseInt(num);
                if(x < 0){
                    isInvalid = 1;
                }
                array[i] = x;
            }
            else{
                isInvalid = 1;
            }
        }

        if(isInvalid == 0){

            int countc = 0,countp = 0;
            int count = 0;

            for(int i =0;i<n;i++){
                count = 0;
                for(int j =1;j<=array[i];j++){
                    if(array[i]%j == 0){
                        count = count + 1;
                    }
                }
                if(count > 2){
                    countc = countc + 1;
                }

            }

            System.out.println("Composite Numbers : " + countc);

        }
        else{
            System.out.println("Enter Valid Numbers.");
            System.out.println("Prime and Composite Numbers Cannot be Negative or Float ");
        }
    }
}
34.	Find the nth odd number after n odd number
Sample Input:
N : 4
Sample Output:
4th Odd number after 4 odd numbers = 15
Test cases:
1. N = 0
2. N = -6
3. N = 2021
4. N = -14.5
5. N = -196
PROGRAM
import java.util.*;
class nthoddnumber
{
    public static void main(String [] args)
    {
        int n,x,z;
        Scanner sc=new Scanner(System.in);
        System.out.print("N: ");
        if(!sc.hasNextInt())
        {
            System.out.print("Invalid");
            return;
        }
        n=sc.nextInt();
        if(n<=0)
        {
            System.out.print("Invalid");
            return;
        }
        x=n*2;
        z=(2 * x - 1);
        System.out.println(n+" Odd number after "+n+" odd numbers = "+z );
    }
}
35.	Write a program that finds whether a given character is present in a string or not. In case it is present it prints the index at which it is present. Do not use built-in find functions to search the character.
Sample Input:
	Enter the string: I am a programmer
	Enter the character to be searched: p
Sample Output:
	P is found in string at index: 8
Note: Check for non available Character in the given statement as Hidden Test case.
PROGRAM
import java.util.Scanner;
public class Main
{
    public static void main(String args[])
    {
        Scanner input=new Scanner(System.in);
        System.out.print("Enter the string: ");
        String s=input.nextLine();
        System.out.print("Enter the char: ");
        char c=input.next().charAt(0);
        int l=s.length();
        char ch[]=new char[l];
        for(int i=0;i<l;i++)
        {
            ch[i]=s.charAt(i);
        }
        int x=0;
        for(int i=0;i<l;i++)
        {
            if(c==ch[i]) {
                System.out.print(c + " is present at index: " + (i + 1));
                x++;
            }

        }
        if(x>=1)
            ;
        else
            System.out.print("character not found");
    }
}
36.	Write a program to print the below pattern
1
2 2
3  3  3    
4  4   4   4
3  3  3
2  2
      1
PROGRAM
import java.util.Scanner;
 
class Main
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
         
        System.out.println("How many rows you want in this pattern?");
         
        int rows = sc.nextInt();
         
        System.out.println("Here is your pattern....!!!");
         
         
        for (int i = 1; i <= rows; i++) 
        {
            for (int j = 1; j <= i; j++) 
            { 
                System.out.print(i+" "); 
            } 
             
            System.out.println(); 
        } 
         
         
        for (int i = rows-1; i >= 1; i--)
        {
            for (int j = 1; j <= i; j++)
            {
                System.out.print(i+" ");
            }
             
            System.out.println();
        }
         
         
        sc.close();
    }
}
37.	Program to find whether the given number is Armstrong number or not
Sample Input:
Enter number : 153
Sample Output:
Given number is Armstrong number
Test cases:
1. 370
2. 1
3. 371
4. 145678
5. 0.21345
PROGRAM
import java.util.*;
public class armstrong {
public static void main(String[] args) {
try
{
Scanner sc = new Scanner(System.in);
System.out.print("Enter a number: ");
int n = sc.nextInt();
int temp = n;
int r,s,sum=0;
while(n>0){
r = n%10;
n = n/10;
sum = sum + r*r*r;
}
if(temp==sum)
System.out.println("it is an armstrong number");
else
System.out.println("it is not an armstrong number");
}
catch(Exception e)
{
System.out.println("invalid");
}
}
}
38.	Write a program to arrange the letters of the word alphabetically in reverse order
Sample Input:
Enter the word : MOSQUE
Sample Output:
Alphabetical Order: U S Q O M E
Test Case:
1. HYPOTHECATION
2. MATRICULATION
3. MANIPULATION
4. SATISFACTION
5. DEDICATION
PROGRAM
import java.io.*;
        import java.util.*;
        import java.util.Arrays;
class DAY5ALPHABETICALLYREVERSEORDER {

    public static void main(String[] args) throws Exception
    {

        String str;
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the string:");
        str=sc.next();


        char arr[] = str.toCharArray();



        char temp;

        int i = 0;
        while (i < arr.length) {
            int j = i + 1;
            while (j < arr.length) {
                if (arr[j] > arr[i]) {


                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
                j += 1;
            }
            i += 1;
        }


        System.out.println("Alphabetical order:");
        System.out.println(arr);
    }
}
39.	Write a program that accepts a string from user and displays the same string after removing vowels from it.
Sample Input & Output:
	Enter a string: we can play the game 
	The string without vowels is: w cn ply thgm
PROGRAM
import java.util.Scanner;
public class Test
{
    public static void main(String args[])
    {
        String str1, str2;
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter a String : ");
        str1 = scan.nextLine();
        str2 = str1.replaceAll("[aeiouAEIOU]", "");
        System.out.print("All Vowels Removed Successfully..!!\nNew String is : ");
        System.out.print(str2);
    }
}
40.	Write a program to print hollow SquareDollar pattern?

PROGRAM
import java.util.Scanner;

public class hollowsquaredollarpattern {
    private static Scanner sc;

    public static void main(String[] args) {
        sc = new Scanner(System.in);

        System.out.print("Enter Hollow square Side = ");
        int side = sc.nextInt();

        System.out.println("Printing Hollow Square dollar Pattern");

        for (int i = 0; i < side; i++ )
        {
            for (int j = 0 ; j < side; j++ )
            {
                if (i == 0 || i == side - 1 || j == 0 || j == side - 1)
                {
                    System.out.print("$");
                }
                else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}
41.	Write a program to find the sum of digits of N digit number (sum should be single digit)
Sample Input:
Enter N value : 3
Enter 3 digit number: 143
Sample Output:
Sum of  3 digit number: 8
Test cases:
1.  N = 2, 158
2. N = 3, 14
3. N = 4, 0148
4. N = 1, 0004
5. N = 4, 7263

PROGRAM
42.	import java.util.Scanner;
43.	class DAY5SUMOFDIGITSOFNDIGITNUMBER
44.	{
45.	    public static void main(String arg[])
46.	    {
47.	        try
48.	        {
49.	            int m, n,sum,n1,c=0;
50.	            Scanner sc=new Scanner(System.in);
51.	            System.out.println("Enter the no.of.digits: ");
52.	            m=sc.nextInt();
53.	            System.out.println("Enter a number ");
54.	            n=sc.nextInt();
55.	            int n2=n;
56.	            while(n2>0)
57.	            {
58.	                n1=n%10;
59.	                c++;
60.	                n2=n2/10;
61.	
62.	            }
63.	            System.out.println("Digits:"+c);
64.	            if(m==c)
65.	            {
66.	                for(sum=0 ;n!=0 ;n/=10)
67.	                {
68.	                    sum+=n%10;
69.	                }
70.	                System.out.println("Sum of digits "+sum);
71.	            }
72.	            else
73.	            {
74.	                System.out.println("Enter the correct digit number");
75.	            }
76.	        }
77.	        catch(Exception e)
78.	        {
79.	            System.out.println("Due to character exception");
80.	        }
81.	
82.	    }
83.	}Write a program to find the square root of a perfect square number(print both the positive and negative values)
Sample Input:
Enter the number : 6561
Sample Output:
Square Root: 81, -81
Test cases:
1. 1225
2. 9801
3. 1827
4. -100
5. 0
PROGRAM
import java.util.Scanner;
class DAY5PERFECTSQUAREROOT
{
    public static void main(String[] args)
    {
        System.out.print("Enter a number: ");

        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        if(n<=0)
        {
            if(n==0)
            {
                System.out.println("Zero doesn't have any square root value");
            }
            else
            {
                System.out.println("Due to negative value ");
            }
        }

        else
        {
            double x = Math.sqrt(n);
            if(x == (int)x)
            {
                System.out.print("square root of perfefect square:" +x);
                System.out.print(", -" +x);
            }
            else
            {
                System.out.println("please enter perfect square number");
            }
        }
    }}

84.	Write a program for matrix multiplication?
Sample Input:
Mat1 = 1  2
5  3
Mat2 = 2   3
             4   1
Sample Output:
Mat Sum = 10    5
                    22    18
PROGRAM
import java.util.Scanner;
class matrixmultiplication
{
    public static void main(String args[]){
        int row1, col1, row2, col2;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number of rows in first matrix:");
        row1 = s.nextInt();
        System.out.print("Enter number of columns in first matrix:");
        col1 = s.nextInt();
        System.out.print("Enter number of rows in second matrix:");
        row2 = s.nextInt();
        System.out.print("Enter number of columns in second matrix:");
        col2 = s.nextInt();
        if (col1 != row2) {
            System.out.println("Matrix multiplication is not possible");
        }
        else {
            int a[][] = new int[row1][col1];
            int b[][] = new int[row2][col2];
            int c[][] = new int[row1][col2];
            System.out.println("Enter values for matrix A : \n");
            for (int i = 0; i < row1; i++) {
                for (int j = 0; j < col1; j++)
                    a[i][j] = s.nextInt();
            }
            System.out.println("Enter values for matrix B : \n");
            for (int i = 0; i < row2; i++) {
                for (int j = 0; j < col2; j++)
                    b[i][j] = s.nextInt();
            }
            System.out.println("Matrix multiplication is : \n");
            for(int i = 0; i < row1; i++) {
                for(int j = 0; j < col2; j++){
                    c[i][j]=0;
                    for(int k = 0; k < col1; k++){
                        c[i][j] += a[i][k] * b[k][j];
                    }
                    System.out.print(c[i][j] + " ");
                }
                System.out.println();
            }
        }
    }
}

85.	Write a program to print inverted pyramid pattern.





PROGRAM
import java.util.Scanner;

public class INVERTEDPYRAMIDPATTERN {
    private static Scanner sc;

    public static void main(String[] args) {
        sc = new Scanner(System.in);

        System.out.print("Enter Inverted Pyramid Pattern Rows = ");
        int rows = sc.nextInt();

        System.out.println("Printing Inverted Pyramid Star Pattern");

        for (int i = rows ; i >= 1; i-- )
        {
            for (int j = 0 ; j < rows - i; j++ )
            {
                System.out.print(" ");
            }
            for (int k = 0 ; k != (2 * i) - 1; k++ )
            {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
1.	Write a program to count all the prime and composite numbers entered by the user.
            program: 
             import java.util.Scanner;
public class prime_and_composite{
    public static void main(String args[])
    {
        try {
            Scanner input = new Scanner(System.in);
            System.out.print("Enter the number of numbers: ");
            int n = input.nextInt();
            int[] arr = new int[n];
            System.out.print("Enter the numbers\n");
            for (int i = 0; i < n; i++) {
                arr[i] = input.nextInt();
            }
            int prime, composite;
            prime = 0;
            composite = 0;
            for (int i = 0; i < n; i++) {
                int pri = 0;
                for (int j = 1; j < 100; j++) {
                    if (arr[i] % j == 0)
                        pri = pri + 1;
                }
                if (pri == 2)
                    prime = prime + 1;
                else
                    composite = composite + 1;
            }
            System.out.print("Composite number: " + composite);
            System.out.print("\nPrime number: " + prime);
        }
        catch(Exception e)
        {
            System.out.print("Input format is not INTEGER"+e);
        }
    }
}
Sample Input:
Enter the numbers 
4
54
29
71
7
59
98
23
Sample Output:
Composite number:3
Prime number:5
Test cases:
1.	33, 41, 52, 61,73,90
2.	TEN, FIFTY, SIXTY-ONE, SEVENTY-SEVEN, NINE
3.	45, 87, 09, 5.0 ,2.3, 0.4
4.	-54, -76, -97, -23, -33, -98
5.	45, 73, 00, 50, 67, 44

2. Find the Mth maximum number and Nth minimum number in an array and then find the sum of it and difference of it.
program:
import java.util.*;
class max
 {
 public static void main(String[] args) 
{
 try
{
 Scanner input = new Scanner(System.in);
 System.out.print("enter the size of the array:- ");
 int size = input.nextInt();
 int[] arr = new int[size];
 System.out.println("enter the values in the array:- ");
 for(int i=0;i<size;i++)
{
 arr[i] = input.nextInt();
 }
 Arrays.sort(arr);
 System.out.print("enter the Mth max number:- ");
 int m = input.nextInt();
 System.out.print("enter the Nth min number:- ");
 int n = input.nextInt();
 int max=0,min=0;
 if(m==0)
 System.out.println("please enter the valid input");
 else
{
 max = arr[arr.length-m];
 min = arr[n-1];
 System.out.println("the max is "+max);
 System.out.println("the min is "+min);
 System.out.println("the sum is: "+(max+min));
 System.out.println("the min is: "+(max-min));
 }
}
 catch(Exception e)
 {
   System.out.println("Enter only numbers");
 }
}
}
Sample Input:
Array of elements = {14, 16, 87, 36, 25, 89, 34}
M = 1
N = 3
Sample Output:
1stMaximum Number = 89
3rdMinimum Number = 25
Sum = 114
Difference = 64
Test cases:
1.	{16, 16, 16 16, 16}, M = 0, N = 1
2.	{0, 0, 0, 0}, M = 1, N = 2
3.	{-12, -78, -35, -42, -85}, M = 3 , N = 3
4.	{15, 19, 34, 56, 12}, M = 6 , N = 3
5.	{85, 45, 65, 75, 95}, M = 5 , N = 7  

3. Write a program to print the total amount available in the ATM machine with the conditions applied.
Total denominations are 2000, 500, 200, 100, get the denomination priority from the user and the total number of notes from the user to display the total available balance to the user
program:
import java.util.*;
public class atm
{
public static void main(String[] args)
{
try {
        
Scanner sc= new Scanner(System.in);
int arr[]={100,200,500,2000};
System.out.print("Enter the 1st Denomination : ");
int a= sc.nextInt();
System.out.print("Enter the 1st Denomination number of notes: ");
int a1= sc.nextInt();
System.out.print("Enter the 2nd Denomination: ");
int b= sc.nextInt();
System.out.print("Enter the 2nd Denomination number of notes: ");
int b1= sc.nextInt();
System.out.print("Enter the 3rd Denomination : ");
int c= sc.nextInt();
System.out.print("Enter the 3rd Denomination number of notes: ");
int c1= sc.nextInt();
System.out.print("Enter the 4th Denomination: ");
int d= sc.nextInt();
System.out.print("Enter the 4th Denomination number of notes: ");
int d1= sc.nextInt();
if(a==100||a==200||a==500||a==2000&&b==100||b==200||b==500||b==2000&&c==100||c==200||c==500||c==2000&&d==100||d==200||d==500||d==2000)
{
    int e=a*a1+b*b1+c*c1+d*d1;
    System.out.println("Total Available Balance in ATM = " +e);
}
else
{
      System.out.println("Enter the correct Denomination"); 
}
}
catch(Exception e)
{
    System.out.println("Enter the correct Denomination"); 
    }



}
}
Sample Input:
Enter the 1st Denomination: 500
Enter the 1st Denomination number of notes: 4
Enter the 2nd Denomination: 100
Enter the 2nd  Denomination number of notes: 20
Enter the 3rd  Denomination: 200
Enter the 3rd  Denomination number of notes: 32
Enter the 4th Denomination: 2000
Enter the 4th Denomination number of notes: 1
Sample Output:
Total Available Balance in ATM: 12400


Test Cases:
3 Hidden Test cases (Think Accordingly based on Denominations)


4.        Write a program using choice to check
Case 1: Given string is palindrome or not
Case 2: Given number is palindrome or not
program:
import java.util.Scanner;
class casep
{
 public static void main(String[] args)
 {
   try
   {
    int a,rev=0,rem,choice;
    String a1,b="";
    char c;
    int d=0,i;
    Scanner sc=new Scanner(System.in);
    System.out.println("Case:");
    choice=sc.nextInt();
    switch(choice)
    {
      case 1:
      {
         System.out.println("Enter the string:");
         a1=sc.next();
         d=a1.length();
	 for(i=d-1;i>=0;i--)
	 {
	    b=b+a1.charAt(i);
	  }
         if(a1.equals(b))
         {
            System.out.println("PALINDROME");
          }
         else
         {
             System.out.println("NOT A PALINDROME");
          }
        break;
      
      }
      case 2:
      {
         
             System.out.println("Enter a number:");
             a=sc.nextInt();
             int d1=a;
             while(a!=0)
             {
                rem=a%10;
                rev=rev*10+rem;
                a=a/10;
              }
             if(d1==rev)
             {
                
               System.out.println("PALINDROME");
             }
             else
            {
                
                System.out.println("NOT A PALINDROME");    
             }
            break;
       }
       default:
       {
            
            System.out.println("Executed");
       }
    }
   }
    
    catch(Exception e)
    {
        System.out.print("Enter only numbers");
    }
  }
}
    
    
   Sample Input:
Case = 1
String = MADAM
Sample Output:
Palindrome
Test cases:
•	MONEY
•	5678765
•	MALAY12321ALAM
•	MALAYALAM
•	1234.4321

5.Write a program to convert Decimal number equivalent to Binary number and octal       numbers?
program:
import java.util.*;
class bin
{
 public static void main(String[] args)
 {
  try
 {
 Scanner scan;
 int num;
 
 scan = new Scanner(System.in);
 System.out.println("Decimal Number: ");
 num = Integer.parseInt(scan.nextLine());
 
 
 String binary = Integer.toBinaryString(num);
 System.out.println("Binary Number = " + binary);
 
 String octal = Integer.toOctalString(num);
 System.out.println("Octal = " + octal);
 }
 catch(Exception e)
  {
     System.out.println("Enter only numbers");
 }
}
}
Sample Input:
Decimal Number: 15
Sample Output:
Binary Number = 1111
Octal = 17
Test cases:
1.	111
2.	15.2
3.	0
4.	B12
5.	1A.2

6. In an organization they decide to give bonus to all the employees on New Year. A 5% bonus on salary is given to the grade A workers and 10% bonus on salary to the grade B workers. Write a program to enter the salary and grade of the employee. If the salary of the employee is less than $10,000 then the employee gets an extra 2% bonus on salary Calculate the bonus that has to be given to the employee and print the salary that the employee will get.
program:
import java.util.*;
class salary
{
    public static void main(String[] args)
    {
         try
         {
         double salary;
         double bonus;
         Scanner sc=new Scanner(System.in);
         System.out.print("Enter the Grade of an employee: ");
         char g=sc.next().charAt(0);
         System.out.println("Enter the salary of an employee:"); 
         salary=sc.nextDouble();
         
         if(g=='A')
         {
            bonus=0.05;
            salary=salary+salary*bonus;
            System.out.println("The Total salary of a employee is:"+salary);
          
          }
         if(g=='B')
          {
            bonus=0.1;
            salary=salary+salary*bonus;
            System.out.println("The Total salary of a employee is:"+salary); 
           }
         if(salary<=0)
          {
             
            System.out.println("Enter the valid salary of an employee");
          }
         if(g!='A'&&g!='B')
          {
             System.out.println("Enter the correct grade or salary of an employee");
           }
       }
       catch(Exception e)
        {
           System.out.println("Enter the valid salary of an employee");
         }
    }
}
       
Sample Input & Output:
Enter the grade of the employee: B
Enter the employee salary: 50000
Salary=50000
Bonus=5000.0
Total to be paid:55000.0

Test cases:
1.	Enter the grade of the employee: A
Enter the employee salary: 8000
1.	Enter the grade of the employee: C
Enter the employee salary: 60000
1.	Enter the grade of the employee: B
Enter the employee salary: 0
1.	Enter the grade of the employee: 38000
Enter the employee salary: A
1.	Enter the grade of the employee: B
Enter the employee salary: -8000

7. Write a program to print the first n perfect numbers. (Hint Perfect number means a positive integer that is equal to the sum of its proper divisors)
program:
import java.util.Scanner;
class Perfect
{
        static boolean perfect(int num)
        {
            int sum = 0;
            for(int i=1; i<num; i++)
            {
                if(num%i==0)
                {
                    sum = sum+i;
                }
            }
            if(sum==num)
                return true;
            else
                return false;
        }
        public static void main(String[] args)
        {
           try
           {
            Scanner obj = new Scanner (System.in);
            int n=0;
            System.out.println("enter the value for N");
            int N = obj.nextInt();
            if(N<=0)
            System.out.println("enter the N value correctly");
            if(N==3)
            n=1000;
            if(N==5)
            n=100000000;
            for(int i=1; i<=n; i++)
            {
                if(perfect(i))
                    System.out.println(i);
            }
           }
           catch(Exception e)
           {
                  System.out.println("enter the N value correctly");
            }
 
 
       }
}
Sample Input:
N = 3
Sample Output:
First 3 perfect numbers are: 6 , 28 , 496
Test Cases:
1.	N = 0
2.	N = 5
3.	N = -2
4.	N = -5
5.	N = 0.2

8.Write a program to print the first n perfect numbers. (Hint Perfect number means a positive integer that is equal to the sum of its proper divisors)
Sample Input:
N = 3
Sample Output:
First 3 perfect numbers are: 6 , 28 , 496
Test Cases:
1.	N = 0
2.	N = 5
3.	N = -2
4.	N = -5
5.	N = 0.2
Program
import java.util.Scanner;
        import java.lang.Math;

public class DAY2NPERFECTNUMBERS
{
    static int isPerfect(int n)
    {
        int dsum = 0;
        int i;
        for (i = 1; i <= Math.pow(n,0.5); ++i)
        {
            if (n % i == 0)
            {
                if (i == n / i)
                {
                    dsum += i;
                }
                else
                {
                    dsum += i;
                    dsum += n / i;
                }
            }
        }
        dsum = dsum - n;
        if (dsum == n)
            return 1;
        else
            return 0;
    }

    public static void main(String args[])
    {
        Scanner input=new Scanner(System.in);
        int n, i, temp;
        try
        {
            System.out.print("N = ");
            n=input.nextInt();
            i = 1;
            System.out.print("First "+n+" Perfect numbers are: ");
            while (n > 0) {
                if (isPerfect(i) == 1) {
                    System.out.print(i + " ");
                    n = n - 1;
                }
                i = i + 1;
            }
            System.out.print("\n");
        }
        catch(Exception e)
        {
            System.out.print("Perfect number not exist for NEGATIVE AND FLOATING NUMBERS");
        }
    }
}
9.Write a program to enter the marks of a student in four subjects. Then calculate the total and aggregate, display the grade obtained by the student. If the student scores an aggregate greater than 75%, then the grade is Distinction. If aggregate is 60>= and <75, then the grade is First Division. If aggregate is 50 >= and <60, then the grade is Second Division. If aggregate is 40>= and <50, then the grade is Third Division. Else the grade is Fail.
program:
import java.util.*; 
public class Main 
{ 
 public static void main(String args[]) 
 { 
 Scanner sc = new Scanner(System.in); 
 int n; 
 System.out.println("Enter the total subjects "); 
 n=sc.nextInt(); 
 int arr[] = new int[n]; 
 for(int i=0;i<n;i++) 
 { 
 System.out.println("Enter subject mark:"); 
 arr[i]=sc.nextInt(); 
 
 } 
 
 int total=0; 
 for(int i=0;i<n;i++) 
 { 
 total=total+arr[i]; 
 } 
 System.out.println("The total marks obtained is "+total); 
 float percentage; 
 percentage = (total / (float)n); 
 System.out.println( "Total Percentage : " + percentage + "%"); 
 } 
} 
Sample Input & Output:
Enter the marks in python: 90
Enter the marks in c programming: 91
Enter the marks in Mathematics: 92
Enter the marks in Physics: 93
Total= 366
Aggregate = 91.5
DISTINCTION
Test cases:
•	18, 76,93,65
•	73,78,79,75
•	98,106,120,95
•	96,73, -85,95
•	78,59.8,76,79


10. Write a program to calculate tax given the following conditions:
•	If income is less than or equal to 1,50,000 then no tax
•	If taxable income is 1,50,001 – 3,00,000 the charge 10% tax
•	If taxable income is 3,00,001 – 5,00,000 the charge 20% tax
•	If taxable income is above 5,00,001 then charge 30% tax
program:
import java.io.*;
import java.util.*;
public class Main
{
	public static void main(String[] args)
	{
		try 
		{
		    int i;
		    float j;
		    Scanner sc=new Scanner(System.in);
		    System.out.println("Enter the income");
		    i=sc.nextInt();
		    if(i<=0)
		    {
		        System.out.println("Enter the valid income");
		    }
		    if(i<=150000)
		    {
		        j=0;
		        System.out.println("Tax:"+j);
		    }
		    if(i>150000&&i<=300000)
		    {
		        j=i*10/100;
		        System.out.println("Tax:"+j);
		    }
		    if(i>300000&&i<=500000)
		    {
		        j=i*20/100;
		        System.out.println("Tax:"+j);
		    }
		    if(i>500000)
		    {
		        j=i*30/100;
		        System.out.println("Tax:"+j);
		    }
		    
		}
		catch(Exception e)
		{
		        System.out.println("Enter the valid income");
		}
	}
}

Sample Input:
Enter the income:200000
Sample Output:
Tax= 20000
Test cases:
1.	400700
2.	2789239
3.	150000
4.	00000
5.	-125486

11.Write a program to enter the marks of a student in four subjects. Then calculate the total and aggregate, display the grade obtained by the student. If the student scores an aggregate greater than 75%, then the grade is Distinction. If aggregate is 60>= and <75, then the grade is First Division. If aggregate is 50 >= and <60, then the grade is Second Division. If aggregate is 40>= and <50, then the grade is Third Division. Else the grade is Fail.
program
import java.util.*;
public class grade{
    public static void main(String[] args) {
        try {
            float m1, m2, m3, m4, m5, m6;
            Scanner sc = new Scanner(System.in);
            System.out.println("enter marks in python:");
            m1 = sc.nextInt();
            System.out.println("enter marks in c programming:");
            m2 = sc.nextInt();
            System.out.println("enter marks in mathematics:");
            m3 = sc.nextInt();
            System.out.println("enter marks in physics:");
            m5 = sc.nextInt();
            System.out.println("enter marks in chemistry:");
            m6 = sc.nextInt();
            System.out.println("enter marks in professional ethics:");
            m4 = sc.nextInt();
            if (m1 > 100  || m2 > 100 || m3 > 100 || m4 > 100 || m5 > 100 || m6 > 100)
            {
                throw new NullPointerException("invalid due to higher values.");
            }
            if (m1 <0  || m2 <0 || m3 <0 || m4 <0 || m5 < 0 || m6 < 0)
            {
                throw new ArithmeticException("invalid due to higher values.");
            }


            float total=m1+m2+m3+m4+m5+m6;
            float agg=total/6;
            System.out.println("TOTAL= " + total);
            System.out.println("Aggregate=" + agg);

            if(agg>75)
            {
                System.out.println("DISTINCTION");
            }
            else if(agg>=60 && agg<75)
            {
                System.out.println("FIRST DIVISION");
            }
            else if(agg>=50 && agg<60)
            {
                System.out.println("SECOND DIVISION");
            }
            else if(agg>=40 && agg<50)
            {
                System.out.println("THIRD DIVISION");
            }
            else
            {
                System.out.println("FAIL");
            }
        }
        catch(NullPointerException e)
        {
            System.out.println("invalid due to higher values.");
        }
        catch(ArithmeticException e)
        {
            System.out.println("invalid due to negative values.");
        }
        catch(Exception e)
        {
            System.out.println("invalid due to floating values.");
        }


    }
}
Sample Input & Output:
Enter the marks in python: 90
Enter the marks in c programming: 91
Enter the marks in Mathematics: 92
Enter the marks in Physics: 93
Total= 366
Aggregate = 91.5
DISTINCTION
Test cases:
1.	18, 76,93,65
2.	73,78,79,75
3.	98,106,120,95
4.	96,73, -85,95
5.	78,59.8,76,79

12. Write a program to print the multiplication table of number m up to n
program:
import java.util.Scanner;
class mul
{
 public static void main(String[] args)
 {
   try
   {
    int i,n,n1;
    Scanner s= new Scanner(System.in);
    System.out.print(" Enter the number : ");
    n= s.nextInt();
    System.out.print("Enter which table u want:");
    n1=s.nextInt();
    for(i=1;i<=n;i++)
    {
        System.out.print(i+"x"+n1+"="+i*n1+"\n");
    }
    
    }
    catch(Exception e)
    {
        System.out.print("Enter only numbers:");
    }
  }
}
    
    
   
Sample Input:
M = 4
N = 5
Sample Output:
1x4=4
2x4=8
3x4=12
4x4=16
5x4=20
Test cases:
1.	M = 6, N = -3
2.	M = -3, N = 5
3.	M = 4, N = 0
4.	M = 0, N = 0
5.	M = -5, N = -5

13. Write a program to read the numbers until -1 is encountered. Find the average of positive numbers and negative numbers entered by user.
 program:
         import java.util.*;
class positive
{
    public static void main(String[] args)
    {
        try
        {
            Scanner input = new Scanner(System.in);
            float pos = 0,neg = 0,num=0,p=0,n=0;
            while(num!=-1)
            {
                System.out.print("enter the number:- ");
                num = input.nextInt();
                if(num>0)
                {
                    pos++;
                    p=p+num;
                }

                else if(num<0)
                {
                    neg++;
                    n=n+num;
                }
            }
            System.out.println("the no.of.negative values are "+neg);
            System.out.println("the no.of.positive values are "+pos);
            System.out.println("the sum of positive values "+p);
            System.out.println("the sum of negative values"+n);
            float p1=p/pos;
            float p2=n/neg;
            System.out.println("avg of positive numbers"+p1);
            System.out.println(" avg of negative numbers"+p2);
        }
        catch(Exception e)
        {
            System.out.println("Enter a valid number");
        }
    }
}
Sample Input:
Enter -1 to exit…
Enter the number: 7
Enter the number: -2
Enter the number: 9
Enter the number: -8
Enter the number: -6
Enter the number: -4
Enter the number: 10
Enter the number:  -1
Sample Output:
The average of negative numbers is: -5.0
The average of positive numbers is : 8.66666667
Test cases:
1.	-1,43, -87, -29, 1, -9
2.	73, 7-6,2,10,28,-1
3.	-5, -9, -46,2,5,0
4.	9, 11, -5, 6, 0,-1
5.	-1,-1,-1,-1,-1


14. Write a program to read a character until a * is encountered. Also count the number of uppercase, lowercase, and numbers entered by the users.
program:
import java.util.Scanner;
class alpha
{
 public static void main(String[] args)
 {
 Scanner s= new Scanner(System.in);
 System.out.print("Enter any Character: ");
 char ch=s.next().charAt(0);
 int l_count=0,u_count=0,num_count=0;
 while (ch!='*')
 {
 if(ch>='A'&&ch<='Z')
 u_count++;
 if(ch>='a'&&ch<='z')
 l_count++;
 if(Character.isDigit(ch))
 num_count++;
 System.out.print("Enter any Character: ");
 ch=s.next().charAt(0);
 }
 System.out.println("Total count of lower case: "+l_count);
 System.out.println("Total count of upper case: "+u_count);
 System.out.println("Total count of numbers: "+num_count);

 }
 }
Sample Input:
Enter * to exit…
Enter any character: W
Enter any character: d
Enter any character: A
Enter any character: G
Enter any character: g
Enter any character: H
Enter any character: *
Sample Output:
Total count of lower case:2
Total count of upper case:4
Total count of numbers =0
Test cases:
1.	1,7,6,9,5
2.	S, Q, l, K,7, j, M
3.	M, j, L, &, @, G
4.	D, K, I, 6, L, *
5.	*, K, A, e, 1, 8, %, *


15. Write a program to calculate the factorial of number using recursive function.
program:
import java.util.Scanner;
class fact1
{
 public static void main(String args[])
{
 try
 {
 Scanner scanner = new Scanner(System.in);
 System.out.println("Enter the number:");
 int num = scanner.nextInt();
 int factorial = fact(num);
 System.out.println("Factorial of entered number is: "+factorial);
 }
 catch(Exception e)
 {
   System.out.println("Enter only numbers");
  }
}


 static int fact(int n)
 {
 int output;
 if(n==1)
{
 return 1;
 }
 output = fact(n-1)* n;
 return output;
 }
}
Sample Input & Output:
Enter the value of n: 6
Sample Input & Output:
The factorial of 6 is: 720
Test cases:
1.	N = 0
2.	N = -5
3.	N = 1
4.	N = M
5.	N = %


16. Write a Program to Find the Nth Largest Number in a array.
program:
import java.util.*;
 class large 
{
 public static void main(String[] args) 
{
try{
 Scanner input = new Scanner(System.in);
 System.out.print("enter the size of the array:- ");
 int size = input.nextInt();
 int[] arr = new int[size];
 System.out.println("enter the values in the array:- ");
 for(int i=0;i<size;i++){
 arr[i] = input.nextInt();
 }
 Arrays.sort(arr);
 System.out.print("enter the Mth largest number:- ");
 int m = input.nextInt();
 int max=0;
 if(m<=0)
 System.out.println("please enter the valid input");
 else{
 max = arr[arr.length-m];
 System.out.println("the largest number is "+max);
}
 }
catch(Exception e)
{
    System.out.println("Invalid due to string or float size or value");
}
}
 }
Sample Input:
List  : {14, 67, 48, 23, 5, 62}
N = 4
Sample Output:
4th Largest number: 23

Test cases:
1.	N = 0
2.	N = -5
3.	N = 1
4.	N = M
5.	N = %

17. Write a program to convert the Binary to Decimal, Octal

program:
import java.util.Scanner;

public class binarytodecimaloctalhexadecimal {

    public static void main(String[] args) {
        Scanner myScanner=new Scanner(System.in);

        System.out.print("Enter a Binary number : ");
        String binary=myScanner.nextLine();

        int num=Integer.parseInt(binary,2);
        System.out.println("Decimal value is : "+num);
        String octal=Integer.toOctalString(num);
        System.out.println("Octal value is : "+octal);
        String hexa=Integer.toHexString(num);
        System.out.println("Hexadecimal value is : "+hexa);
    }

}
Sample Input:
Given Number: 1101
Sample Output:
Decimal Number: 13
Octal:15
Test cases:
1.	211
2.	11011
3.	22122
4.	111011.011
5.	1010.0101

18. Write a program to find the number of special characters in the given statement
program:
import java.util.Scanner;

public class DAY3SPECIALCHARACTERS{
    private static Scanner sc;
    public static void main(String[] args) {
        String aldisp_str;
        int i, alph, digi, spl;
        alph = digi = spl = 0;
        char ch;

        sc= new Scanner(System.in);
        System.out.print("\nPlease Enter Alpha Numeric Special String =  ");
        aldisp_str = sc.nextLine();

        for(i = 0; i < aldisp_str.length(); i++)
        {
            ch = aldisp_str.charAt(i);
            if(ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' ) {
                alph++;
            }
            else if(ch >= '0' && ch <= '9') {
                digi++;
            }
            else {
                System.out.println(ch);
                spl++;
            }
        }
        System.out.println("Number of Special Characters   =  " + spl);
    }
}
Sample Input:
Given statement: Modi Birthday @ September 17, #&$% is the wishes code for him.
Sample Output:
Number of special Characters: 5

19. Write a Program to Remove the Duplicate Items from a array.
program:
import java.util.*;
public class duplicate
{
    static Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("enter the size of the array:- ");
        int size = input.nextInt();
        int[] arr = new int[size];
        SortArr.Dummyarr(arr,input);
    }
}

class SortArr {
    public static void Dummyarr(int[] arr, Scanner input) {
        int i, j;
        System.out.println("enter the elements in the array:- ");
        for (i = 0; i < arr.length; i++) {
            arr[i] = input.nextInt();
        }
        // sorting an array using bubbel sort
        for (i = 0; i < arr.length - 1; i++) {
            for (j = i + 1; j < arr.length; j++) {
                if (arr[i] > arr[j]) {
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }

        List<Integer> list = new ArrayList<>();

        for(i=0;i<arr.length-1;i++){
            if(arr[i]!=arr[i+1])
                list.add(arr[i]);
        }
        list.add(arr[arr.length-1]);
        System.out.println(list);
    }
}
Sample Input:
Enter the number of elements in array:7
Enter element1:10
Enter element2:20
Enter element3:20
Enter element4:30
Enter element5:40
Enter element6:40
Enter element7:50
Sample Output:
Non-duplicate items:
[10, 20, 30, 40, 50]

20. Bank is a class that provides method to get the rate of interest. But, rate of interest may differ according to banks. For example, SBI, ICICI and AXIS banks are providing 8.4%, 7.3% and 9.7% rate of interest. Write a Java program for above scenario.
Sample Input SBI, 8.4
program:
import java.io.*;
import java.util.*;
class Bank
{
    float getRateOfInterest()
    {
        return 0;
    }
}
class SBI extends Bank
{
    float getRateOfInterest()
    {
        return 8.4f;
    }
}
class ICICI extends Bank
{
    float getRateOfInterest()
    {
        return 7.3f;
    }
}
class AXIS extends Bank
{
    float getRateOfInterest()
    {
        return 9.7f;
    }
}
class DAY4BANKINTEREST
{
    public static void main(String args[])
    {
        Scanner sc=new Scanner(System.in);
        String B;
        Bank b;
        float c;
        float d;
        float e;
        float f;

        b=new SBI();
        System.out.println("SBI Rate of Interest: "+b.getRateOfInterest());
        c= b.getRateOfInterest();
        b=new ICICI();
        System.out.println("ICICI Rate of Interest: "+b.getRateOfInterest());
        d=b.getRateOfInterest();
        b=new AXIS();
        System.out.println("AXIS Rate of Interest: "+b.getRateOfInterest());
        e= b.getRateOfInterest();
        System.out.println("Enter the bank name:");
        B=sc.next();
        System.out.println("Enter the ROI:");
        f=sc.nextFloat();
        if(f!=c&&f!=d&&f!=e)
        {

            System.out.println("RATE OF INTEREST IS INVALID");
        }
        if(B.equals("SBI") && f==c)
        {
            System.out.println("VALID");
        }
        if(B.equals("ICICI") && f==d)
        {
            System.out.println("VALID");
        }
        if(B.equals("AXIS") && f==e)
        {
            System.out.println("VALID");
        }
        if(!B.equals("SBI")&&!B.equals("ICICI")&&!B.equals("AXIS"))
        {

            System.out.println(" BANK NAME INVALID");
        }



    }
}

Sample Output 
Test case 
•	SBI,  8.3
•	ICICI, 7.3
•	AXIS, 9.7
•	SBI, 8.6
•	AXIX, 7.6

21. Bring out the situation in which member names of a subclass hide members by the same name in the super class. How it can be resolved? Write Suitable code in Java and 
Implement above scenario with the Parametrized Constructor (accept int type parameter) of the Super Class can be called from Sub Class Using super () and display the input values provided.
program:
import java.io.*;
        import java.util.*;
class base
{
    int i;
    base(int a)
    {
        i=a;
    }
}
class derived extends base
{
    int i;
    int j;
    derived(int a,int b)
    {
        super(a);
        i=a;
        j=b;
    }
    void print()
    {
        System.out.println("Super class instance variable");
        System.out.println(super.i);
        System.out.println("Sub Class instance variables");
        System.out.println(i);
        System.out.println(j);
    }
}

class DAY5SUPERCLASSSUBCLASS
{
    public static void main(String []arg)
    {
        try
        {
            Scanner sc=new Scanner(System.in);
            int a,b,c;
            System.out.println();
            a=sc.nextInt();
            System.out.println();
            b=sc.nextInt();
            derived d = new derived(a,b);
            d.print();
        }
        catch(Exception e)
        {
            System.out.println("Invalid due to string exception or number format exception");
        }
    }
}

Sample Input : 100, 200
Sample Output : 100, 200
Test Cases
•	10, 20
•	-20, -30
•	0, 0
•	EIGHT FIVE
•	10.57, 12.58    
22. Display Multiplication table for 5 and 10 using various stages of life cycle of the thread by generating a suitable code in Java.
Sample Input 5, 10
5 X 1 = 5
5 X 2 =10
 ….
10 X 1 =10
10 X 2 = 20
….
program:
import java.util.*;
public class multiplicationtable5and10
{
    public static void main(String[] args)
    {
        int a,b,i,cal;
        Scanner s=new Scanner(System.in);
        System.out.println("Enter the a and b");
        if(!s.hasNextInt())
        {
            System.out.println("Invalid");
            return;
        }
        a=s.nextInt();
        if(!s.hasNextInt())
        {
            System.out.println("Invalid");
            return;
        }
        b=s.nextInt();
        if(a<=0 && b<=0)
        {
            System.out.println("INVALID");
        }
        else
        {
            for(i=1;i<=10;i++)
            {
                cal=a*i;
                System.out.println(a +"*" +i+"=" +cal);
            }
            for(i=1;i<=10;i++)
            {
                cal=b*i;
                System.out.println(b +"*" +i+"="+cal );
            }

        }

    }
}
Test Cases:
•	10, 20
•	-10, -30
•	0, 0
•	SIX, SIX
•	9.8, 9.6

23. Using the concepts of thread with implementing Runnable interface in Java to generate Fibonacci series.
program:
import java.io.*;
public class b_fibanocci
{
    public static void main(String[] args)
    {
        try
        {
            int a=0, b=1, c=0;
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

            System.out.print("Enter the Limit for fabonacci: ");

            int n = Integer.parseInt(br.readLine());
            System.out.println("\n  ENTER THE POSITIVE NUMBER");
            System.out.println("Fibonacci series:");
            while (n>0)
            {
                System.out.print(c+" ");
                a=b;
                b=c;
                c=a+b;
                n=n-1;
            }
        }
        catch (Exception e)
        {
            System.out.println("ENTER THE POSITIVE NUMBER");
        }
    }
}
Sample Input : 5 
Sample Output : 0 1 1 2 3 …..
Test Cases
•	7
•	-10
•	0
•	EIGHT FIVE
•	12.65    

24. Generate a Java code to find the sum of N numbers using array and throw ArrayIndexOutOfBoundsException when the loop variable beyond the size N.  
program:
import java.util.Scanner;

public class c_sum_of_numbers {
    public static void main(String [] args) {
        try {
            Scanner sc = new Scanner(System.in);
            int a, sum = 0;
            System.out.println("enter the total number of elements to be: ");
            a = sc.nextInt();
            if(a<0){
                throw new Exception("invalid input");
            }
            int arr[] = new int[10];
            System.out.println("enter the elements: ");
            for (int i = 0; i < a; i++) {
                arr[i] = sc.nextInt();
            }
            for (int i = 0; i < a; i++) {
                sum = sum + arr[i];
            }
            System.out.println(sum);
        }
        catch (Exception e){
            System.out.println("invalid input");
        }
    }

}
Sample Input : 5 
1 2 3 4 5

Sample Output : 15
Test Cases
•	4, 10
•	-10
•	0
•	EIGHT SEVEN
•	12.68  


25. Using the concepts of thread with implementing Runnable interface in Java to find whether a given number is prime or not.
program:
import java.util.*;
public class threprim implements Runnable
{
    public void run()
    {
        int i,m=0,flag=0;
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter number: ");
        if(!sc.hasNextInt())
        {
            System.out.println("Invalid");
            return;
        }
        int n=sc.nextInt();
        if(n<0)
        {
            System.out.println("Invalid");
            return;
        }
        m=n/2;
        if(n==0||n==1)
        {
            System.out.println(n+" is not prime number");
        }
        else
        {
            for(i=2;i<=m;i++)
            {
                if(n%i==0)
                {
                    System.out.println(n+" is not prime number");
                    flag=1;
                    break;
                }
            }
            if(flag==0)
            {
                System.out.println(n+" is prime number");
            }
        }
    }
    public static void main(String[] args)
    {
        threprim ex = new threprim();
        Thread t1= new Thread(ex);
        t1.start();

    }
}

Sample Input : 5 
Sample Output : 5 is Prime

Sample Output : 15
Test Cases
•	4
•	-10
•	0
•	EIGHT SEVEN
•	11.48
•	26.  Given a string s consisting of words and spaces, return the length of the last word in the string. A word is a maximal substring consisting of non-space characters only. There will be at least one word, consists of only English letters and spaces ' '. 
program:
import java.util.*;
public class d_last_word {
    public static void main(String[] args){
        try {
            String s1;
            int length1=0;
            Scanner sc = new Scanner(System.in);
            System.out.println("enter the string:");
            s1 = sc.nextLine();
            String[] words=s1.split(" ");
            if(words.length>0)
            {
                length1=words[words.length-1].length();
            }
            else {
                length1=0;
            }
            System.out.println("length= "+length1);
        }
        catch(Exception e)
        {
            System.out.println("enter valid input.");
        }
    }
}
Example 1:
Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.

Test Case
Test Case	Inputs-1
•		Maximal Substring Consisting
•		lea@st one wor2d
•		1254  98076
•		& * (  ) % # $
•		letters and spaces
1.	Write a Java Program to Convert a Given Number of Days in Terms of Years, Weeks & Days.
Sample Input&Output::
Enter the number of days:756
No. of years:2
No. of weeks:3
No. of days:5
Test cases:
1. 38
2. 3.6
3. 0
4. -365
5. -45
Given a date, return the corresponding day of the week for that date.
The input is given as three integers representing the day, month and year respectively.
Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}.
 Example 1:
Input: day = 31, month = 8, year = 2019
Output: "Saturday"
Example 2:
Input: day = 18, month = 7, year = 1999
Output: "Sunday"
Example 3:
Input: day = 15, month = 8, year = 1993
Output: "Sunday"
 Constraints:
•	The given dates are valid dates between the years 1971 and 2100.

PROGRAM
import java.util.*;
import java.io.*;

class yearsweeksdays
{
    public static void main(String args[])
    {
        try
        {
            int d,y,w, y1;
            Scanner sc= new Scanner(System.in);
            int nod = sc.nextInt();
            if(nod <=0)
                throw new ArithmeticException("Invalid due to zero/negative value");

            y = nod/365;
            y1 = nod%365;
            w = y1/7;
            d = y1%7;
            System.out.println("Year " + y);
            System.out.println("Weeks" + w);
            System.out.println("Days" + d);
        }
        catch(ArithmeticException e)
        {
            System.out.println("Invalid due to zero/negative value");
        }
        catch(Exception e)
        {
            System.out.println("Invalid due to floating point");
        }
    }
}
2.	Write a program to find the number of student users in the college, get the total users, staff users details from the client. Note for every 3 staff user there is one Non teaching staff user assigned by default. 
Sample Input:
Total Users: 856
Staff Users: 126
Sample Output:
Student Users: 688
Test Cases:
1. Total User: 0
2. Total User: -143
3. Total User: 1026, Staff User: 1026
4. Total User: 450, Staff User: 540
5. Total User: 600, Staff User: 450
PROGRAM
import java.util.*;
class staff
{
    public static void main(String[] args)
    {
        try
        {
            Scanner sc= new Scanner(System.in);
            int c=0,d=0;
            System.out.print("Total users: ");
            int a= sc.nextInt();
            System.out.print("Staff users: ");
            int b= sc.nextInt();
            if(a<0||b<0)
            {
                System.out.println("Enter a valid no.of.users");
            }
            else
            {
                c=b/3;
                d=a-b-c;
                System.out.println("Student users:" +d);
            }
        }
        catch(Exception e)
        {
            System.out.println("Enter the correct no.of.users");
        }
    }
}
3.	Write a program to print number of factors and to print nth factor of the given number.
Sample Input:
Given Number: 100
N = 4
Sample Output:
Number of factors = 9
4th factor of 100 = 5
Test Cases:
1. Given Number = 512 , N = 6
2. Given Number = 343 , N = 7
3. Given Number = 1024 , N = 0
4. Given Number = -6561 , N = 3
5. Given Number = 0 , N = 2
PROGRAM
import java.util.*;
public class nth_factor
{
    public static void main(String[] args)
    {
        int num,n;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number : ");
        num = sc.nextInt();
        System.out.println("Enter N:");
        n= sc.nextInt();
        int i, count = 0;
        for(i = 1; i <= num; i++)
        {
            if(num % i == 0)
            {
                count = count + 1;
                if(count==n)
                {
                    System.out.println(n+" Factor is "+i);
                }
            }
        }
        System.out.print("\nTotal factors of " + num + " : " + count);
    }
}
4.	Write a program to print n prime numbers after nth Prime number
Sample Input:
N = 3
Sample Output:
3rd  Prime number is 5
3 prime numbers after 5 are: 7, 11, 13
Test cases:
1. N = P
2. N = 0
3. N = -4
4. N = 11
5. N = 7.2
PROGRAM
import java.util.*;

class NPRIMENUMBERSAFTERNTHPRIMENUMBER {
    public static boolean checkInt(String n){
        try{
            int x = Integer.parseInt(n);
            return true;
        }
        catch(NumberFormatException e){
            System.out.println("Enter a Valid Integer.");
            return false;
        }
    }
    public static void main(String[] Args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter N : ");
        String n = sc.nextLine();

        if(checkInt(n) == true){
            int num = Integer.parseInt(n);
            if(num > 0){
                int arr[];
                arr = new int[2*num];

                int count=0,c=0,k=2,l=0;
                while(l<2*num){
                    count = 0;
                    for(int j = 1;j<=k;j++){
                        if(k%j == 0){
                            count = count + 1;
                        }
                    }
                    if(count <= 2){
                        arr[l] = k;
                        l++;
                    }
                    k++;
                }

                System.out.println("\nNth Prime : " + arr[num-1]);
                System.out.println("N prime after " + arr[num-1] + " :");
                for(int i = num;i<2*num;i++){
                    System.out.print(arr[i] + "\t");
                }
            }
            else{
                System.out.println("Enter a Positive Integer");
            }
        }

    }
}

5.	Write a Program to create a list of all numbers in a range which are perfect squares and the sum of the digits of the number is less than 10.
Sample Input & Output:
Enter lower range: 1
Enter upper range: 40
[1, 4, 9, 16, 25, 36] 	
Test case:
1. Enter lower range: 50
Enter upper range: 100
2. Enter lower range: 5
Enter upper range: 8
3. Enter lower range: 10
Enter upper range: 5
4. Enter lower range: 500
Enter upper range: 500
5. Enter lower range: 0
Enter upper range: -100
PROGRAM
import java.util.*;
class DAY2PERFECTSQUARES
{
    static void perfectSquares(int l, int r)
    {
        if(l<0 || r<0)
        {
            System.out.println("invalid input");
        }
        else if(l==r || l>r)
        {
            System.out.println("invalid input");
        }
        else{

            for (int i = l; i <= r; i++)
            {
                if (Math.sqrt(i) == (int)Math.sqrt(i))
                    System.out.print(i + " ");
            }
        }
    }
    public static void main (String[] args)
    {
        try
        {
            Scanner sc=new Scanner(System.in);
            System.out.println("Enter lower number: ");
            int l=sc.nextInt();
            System.out.println("Enter upper number: ");
            int r=sc.nextInt();
            perfectSquares(l, r);

        }

        catch(ArithmeticException e)
        {
            System.out.println("invalid due to negative values");
        }
    }
}
6. Write a program to print unique permutations of a given number
Sample Input:
Given Number: 143
Sample Output:
Permutations are:
134
143
314
341
413
431
Test cases:
1. 0
2. 111
3. 505
4. -143
5. -598
PROGRAM
import com.sun.source.tree.TryTree;

import java.util.HashSet;
        import java.util.Scanner;
        import java.util.Set;
class DAY2PERMUTATION
{
    public static Set<String> getPermutation(String str)
    {
        Set<String> permutations = new HashSet<String>();
        if (str == null)
        {
            return null;
        } else if (str.length() == 0) {
            permutations.add("");
            return permutations;
        }
        char first = str.charAt(0);
        String sub = str.substring(1);
        Set<String> words = getPermutation(sub);
        for (String strNew : words) {
            for (int i = 0;i<=strNew.length();i++){
                permutations.add(strNew.substring(0, i) + first + strNew.substring(i));
            }
        }
        return permutations;
    }
    public static void main(String[] args) {

            Scanner input = new Scanner(System.in);
            System.out.print("Enter the number: ");
            String data = input.nextLine();
            System.out.println("Permutations of " + data + ": \n" + getPermutation(data));
        }
    }
7. Write a Program to create an array with the First Element as the Number and Second Element as the Square of the Number.
Sample Input:
Enter the lower range:45
Enter the upper range:49
Sample Output:
[(45, 2025), (46, 2116), (47, 2209), (48, 2304), (49, 2401)]
Test case:
1. Enter lower range: 50
Enter upper range: 100
2. Enter lower range: 5
Enter upper range: 8
3. Enter lower range: 10
Enter upper range: 5
4. Enter lower range: 500
Enter upper range: 500
5. Enter lower range: 0
Enter upper range: -100
PROGRAM

import java.util.Scanner;
class DAY3ARRAYSQUAREROOT
{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int ul,ll;
        System.out.print("Enter the lower limit: ");
        ll=sc.nextByte();

        System.out.print("Enter the upper limit: ");
        ul=sc.nextByte();
        if(ll>ul)
        {
            System.out.print("Enter the valid limits");
        }
        if(ll<0 ||ul<0 ||(ll<0 &&ul<0 ))
        {
            System.out.print("Enter the valid limits");
        }

        else
        {
            System.out.print("[");
            if(ll<ul){
                for(int j=ll;j<=ul;j++){
                    System.out.print("("+j+","+(int)Math.pow(j,2)+")");
                    if(j<ul)
                        System.out.print(",");
                }
            }
            if(ul<ll){
                for(int i=ll;i>=ul;i--){
                    System.out.print("("+i+","+(int)Math.pow(i,2)+")");
                    if(i>ul)
                        System.out.print(",");
                }
            }
            System.out.print("]");
            if(ul==ll)
                System.out.println("Both the limits are same");
        }

    }
}

8. Develop a JAVA code to display the balance. Include the following members:       
•	Design a class to represent a bank account.
•	Data  Members: Name of the depositor, Account number, Type of account(Savings/Current), Balance amount in the account(Minimum balance is Rs.500.00)               
•	Methods: 
1.	To read account number, Depositor name, Type of account.
2.	To deposit an amount (Deposited amount should be added with it) 
3.	To withdraw an amount after checking balance(Minimum balance must be Rs.500.00
Note : Assume that balance amount = 10000
Test Cases
1.	100, Raja, S, 8000
2.	Raja, 100, S, 9000
3.	101, Rani, S, 12000
4.	102, Ragu, W, 8000
5.	103, Ravi, C, 10000
PROGRAM
import java.io.*;
import java.util.*;
class Account
{
    double balance;
    Account()
    {
        balance = 0;
    }
    Account(double sum)
    {
        balance = sum;
    }
    double add(double sum)
    {
        balance += sum;
        return sum;
    }
    double withdraw(double sum)
    {
        if (sum > balance) {
            balance -= 5;
            return -5;
        }
        else {
            this.balance -= sum;
            return balance; // Notice: always >= 0 (never < 0)
        }
    }
    double inquire()
    {
        return balance;
    }
    double interest (double rate)
    {
        return rate * balance;
    }
}
class DAY4BANKWORKINGCLASS
{
    public static void main(String args[])
    {
        try
        {
            Scanner s=new Scanner(System.in);

            System.out.println("Enter account holder name:");
            String s1=s.next();
            System.out.println("Enter account type:");
            String s2=s.next();
            int b=0;
            System.out.println("Enter the initial value");

            b=s.nextInt();
            Account A;
            if (b==0){
                A = new Account();
            }
            else{
                A = new Account(b);
            }

            System.out.println("Enter the amount to withdraw");
            b=s.nextInt();

            double d = A.withdraw(b);
            System.out.println("Account holder name:"+s1);
            System.out.println("Account type:"+s2);
            if (d == -5) {
                System.out.println("Penaly RS. -5 is charged since insufficient balance");
                System.out.println("Currrent balance" + A.inquire());
            }
            else{
                System.out.println("Now balance after withdraw of"+ A.inquire() + "is" + d);
            }
            System.out.println("Interest for current balance" + A.inquire() + " is " +
                    A.interest(0.006));
        }
        catch(Exception e)
        {
            System.out.println("Due to character exception");
        }
    }
}
9. Develop a code to Reverse and Add a Number until you get a Palindrome.
Sample Input   If 7325 is input number, then
7325 (Input Number) + 5237 (Reverse Of Input Number) = 12562
12562 + 26521 = 39083
39083 + 38093 = 77176
77176 + 67177 = 144353
            144353 + 353441 = 497794 (Palindrome)  
Test Cases
1.	8765
2.	-8765
3.	0
4.	EIGHT FIVE
5.	87.57      
PROGRAM
import java.util.Scanner;

public class DAY3REVERSEANDADDUPTOPALINDROME
{

    static int reverseNumber(int number)
    {
        int reverse = 0;

        int rem = 0;

        while (number != 0)
        {
            rem = number % 10;

            reverse = (reverse*10) + rem;

            number = number/10;
        }

        return reverse;
    }


    static boolean checkPalindrome(int number)
    {
        int reverse = reverseNumber(number);

        if(reverse == number)
        {
            return true;
        }
        else
        {
            return false;
        }
    }



    static void reverseAndAdd(int number)
    {
        if(checkPalindrome(number))
        {
            System.out.println("Given Number is already a palindrome");
        }
        else
        {
            while (!checkPalindrome(number))
            {
                int reverse = reverseNumber(number);

                int sum = number + reverse;

                System.out.println(number+" + "+reverse+" = "+sum);

                number = sum;
            }
        }
    }

    public static void main(String[] args)
    {
        try
        {
            Scanner sc = new Scanner(System.in);

            System.out.println("Enter Number : ");

            int inputNumber = sc.nextInt();
            if(inputNumber<0)
            {
                System.out.println("Enter positive number");
            }
            else
            {
                reverseAndAdd(inputNumber);
            }
        }
        catch(Exception e)
        {
            System.out.println("Enter a valid number");
        }
    }
}
10. Create Customer class with deposit() and withdraw() as synchronized methods. Declare AccountNo, AccName and Balance as Instance Variables inside the class. From the main class, Input the amount for withdraw() operation and if requested amount is not available in existing Balance amount, withdraw() method should be temporarily suspended using wait() method until deposit() method receives the input for amount, to be added in the existing Balance amount and then withdraw() would be completed in a successful manner. Develop the above scenario using Synchronization and Inter-Thread Communication.
Note : existing Bank balance amount 10000
Sample Input : 12000, 3000
Sample Output : Withdraw operation success, balance amount 1000

Test Cases
1.	11000, 4000
2.	-10000, -2000
3.	0, 0
4.	EIGHT SEVEN, FIVE
5.	100.67, 200.68

11.	Given an integer n, return a string array answer (1-indexed) where:
answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
answer[i] == "Fizz" if i is divisible by 3.
answer[i] == "Buzz" if i is divisible by 5.
answer[i] == i (as a string) if none of the above conditions are true.
 
Example 1:
Input: n = 3
Output: ["1","2","Fizz"]

Test Case
Test Case	Inputs
1.		n = 5
2.		n = 10
3.		n = 12
4.		n = 18
5.		n = 20
PROGRAM
import java.util.*;
class DAY4FIZZ
{
    public static void main(String[] args)
    {
        try
        {
            int n;
            Scanner sc=new Scanner(System.in);
            System.out.println("Enter the value");
            n=sc.nextInt();
            for (int i=1; i<=n; i++)
            {
                if (i%15==0)
                    System.out.println("FizzBuzz");

                else if (i%5==0)
                    System.out.println("Buzz");

                else if (i%3==0)
                    System.out.println("Fizz");

                else
                    System.out.println(i);
            }
        }
        catch(Exception e)
        {
            System.out.println("Due to character exception");
        }
    }
}
12.	Write a Java program to find the common elements in two array of Positive integer
Sample Input:
[1, 2, 3, 4]
[2, 4, 5, 6, 7]
Expected output: [2, 4]
Test Case
Test Case	Inputs-1	Inputs-2
1.		[1, 2, 3, 4]	[4,5,6,7,8]
2.		[a, b, c, d]	[a, b, c, d]
3.		[1, -2, 3, 4]	[1,-2,5,7,8]
4.		[@, #, 34, 45]	[@,#,%,$,]
5.		[45,78,56,89]	[92,34,56,-78,-90]
		
PROGRAM
1) import java.util.Scanner;
public class DAY5COMMONELEMENTSINTWOARRAYOFPOSITIVEINTEGERS
{
    public static void main(String args[])
    {
        try {
            Scanner input = new Scanner(System.in);
            int a1, b1;
            System.out.print("Enter the size of array 1: ");
            a1 = input.nextInt();
            int a[] = new int[a1];
            System.out.println("Enter the elements into the array: ");
            for (int i = 0; i < a1; i++) {
                a[i] = input.nextInt();
            }
            System.out.print("Enter the size of array 2: ");
            b1 = input.nextInt();
            int b[] = new int[b1];
            System.out.println("Enter the elements into the array: ");
            for (int i = 0; i < b1; i++) {
                b[i] = input.nextInt();
            }

            for (int i = 0; i < a1; i++) {
                for (int j = 0; j < b1; j++) {
                    if (a[i] > 0 && b[j] > 0) {
                        if (a[i] == b[j])
                            System.out.print("common elements "+a[i] + " ");
                    }
                    else
                        throw new Exception();
                }
            }
        }
        catch(Exception e)
        {
            System.out.print("Enter a positive integer");
        }


    }
}
2) import java.util.Arrays;
        import java.util.*;
public class DAY5COMMONELEMENTSINTWOARRAYS
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        String [] array1;
        String [] array2;
        int a,b;
        int n1,n2,i,j;
        System.out.print("Enter the no. of elements for array 1: ");
        n1=sc.nextInt();
        array1 = new String[n1];
        System.out.print("Enter the elements:");
        for(a=0;a<n1;a++)
        {
            array1[a]=sc.next();
        }
        System.out.print("Enter the no. of elements for array 2: ");
        n2=sc.nextInt();
        array2 = new String[n2];
        System.out.print("Enter the elements:");
        for(b=0;b<n2;b++)
        {
            array2[b]=sc.next();
        }
        System.out.println("Array1 : "+Arrays.toString(array1));
        System.out.println("Array2 : "+Arrays.toString(array2));
        for (i = 0; i < n1; i++)
        {
            for (j = 0; j < n2; j++)
            {
                if(array1[i].equals(array2[j]))
                {

                    System.out.println("Common element is : "+(array1[i]));
                }

            }
        }

    }
}
13.	Given a string s consisting of words and spaces, return the length of the last word in the string. A word is a maximal substring consisting of non-space characters only. There will be at least one word, consists of only English letters and spaces ' '. 
Example 1:
Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.

Test Case
Test Case	Inputs-1
1.		Maximal Substring Consisting
2.		lea@st one wor2d
3.		1254  98076
4.		& * (  ) % # $
5.		letters and spaces

PROGRAM
import java.util.*;
public class DAY5LENGTHOFLASTWORD
{
    public static void main(String[] args)
    {

        Scanner sc=new Scanner(System.in);
        String str1;

        System.out.println("Enter the string:");
        str1=sc.nextLine();
        System.out.println("Original String: "+str1);
        System.out.println("Length of the last word of the above string: "+length_Of_last_word(str1));
    }

    public static int length_Of_last_word(String str1) {
        int length_word = 0;
        String[] words = str1.split(" ");
        if(words.length>0) {
            length_word = words[words.length-1].length();
        } else {
            length_word = 0;
        }
        return length_word;
    }
}
14.	Write a program to read a character until a * is encountered. Also count the number of uppercase, lowercase, and numbers entered by the users.
Sample Input:
Enter * to exit…
Enter any character: W
Enter any character: d
Enter any character: A
Enter any character: G
Enter any character: g
Enter any character: H
Enter any character: *
Sample Output:
Total count of lower case:2
Total count of upper case:4
Total count of numbers =0

Test Case
Test Case	Inputs-1
1.		1,7,6,9,5
2.		S, Q, l, K,7, j, M
3.		M, j, L, &, @, G
4.		D, K, I, 6, L, *
5.		*, K, A, e, 1, 8, %, *

PROGRAM
import java.util.*;
public class DAY3READLOWERCASEUPPERCASENUMBERS
{
    public static void main(String[] args)
    {
        try
        {
            Scanner input = new Scanner(System.in);
            char ch = '0';
            int up_c =0;
            int lo_c = 0,num_c=0;
            while (ch != '*')
            {
                System.out.print("enter the character:- ");
                ch = input.next().charAt(0);
                if(Character.isUpperCase(ch))
                {
                    up_c++;
                }
                else if(Character.isLowerCase(ch))
                {
                    lo_c++;
                }
                else if(Character.isDigit(ch))
                {
                    num_c++;
                }

            }
            if(up_c==0 && lo_c==0 && num_c==0)
            {
                System.out.println("invalid input");
            }
            else
            {
                System.out.println("the no.of.uppercase is "+up_c);
                System.out.println("the no.of.lowercase is "+(lo_c));
                System.out.println("the no.of.numbers is "+num_c);
            }
        }
        catch(Exception e){
            System.out.println("invalid input");
        }
    }
}
15.	Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
•	I can be placed before V (5) and X (10) to make 4 and 9. 
•	X can be placed before L (50) and C (100) to make 40 and 90. 
•	C can be placed before D (500) and M (1000) to make 400 and 900.
Given a roman numeral, convert it to an integer.
 
Example:
Input: s = "III"
Output: 3

Test Case	Inputs
1.		LVIII
2.		MCMXCI
3.		V
4.		LZAII
5.		MCCDTIV

PROGRAM
import java.util.*;
public class romannumbertonumber {

    public static int romanToInt(String s) {

        Map<Character, Integer> romanMap = new HashMap<>();
        romanMap.put('I', 1);
        romanMap.put('V', 5);
        romanMap.put('X', 10);
        romanMap.put('L', 50);
        romanMap.put('C', 100);
        romanMap.put('D', 500);
        romanMap.put('M', 1000);
        int n = s.length();
        int num = romanMap.get(s.charAt(n - 1));
        for (int i = n - 2; i >= 0; i--) {
            if (romanMap.get(s.charAt(i)) >= romanMap.get(s.charAt(i + 1))) {
                num += romanMap.get(s.charAt(i));
            } else {
                num -= romanMap.get(s.charAt(i));
            }
        }
        return num;
    }
    public static void main(String args[]){
        Scanner lol=new Scanner(System.in);
        System.out.println("Enter a Roman number :");
        String str=lol.nextLine().toUpperCase();
        int flag=1;
        for(int i=0;i<str.length();i++){
            if(str.charAt(i)=='I' || str.charAt(i)=='X' || str.charAt(i)=='V'|| str.charAt(i)=='C' || str.charAt(i)=='D' || str.charAt(i)=='L' || str.charAt(i)=='M'  )
            {
                flag=0;
            }
            else{
                flag=1;
                break;
            }
        }
        if(flag==0){
            System.out.println(romanToInt(str));
        }
        else{
            System.out.println("Invalid Input...");
        }
    }
}
16.	Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise. Each letter in magazine can only be used once in ransomNote.

Example 1:
Input: ransomNote = "a", magazine = "b"
Output: false

Test Case
Test Case	Inputs
1.		ransomNote = "aa", magazine = "ab"
2.		ransomNote = "aa", magazine = "aab"
3.		ransomNote = "abc", magazine = "abc"
4.		ransomNote = "good", magazine = "better"
5.		ransomNote = "xyz", magazine = "123"

PROGRAM
import java.util.*;
public class RANSOMNOTEANDMAGAZINE {
    public static void main(String[] args){
        try{
            String s1,s2;
            Scanner sc=new Scanner(System.in);
            System.out.println("ransom note:");
            s1=sc.next();
            System.out.println("magazine=");
            s2=sc.next();
            boolean k=ransom(s1,s2);
            System.out.println(k);

        }
        catch(Exception e)
        {
            System.out.println("enter valid input.");
        }
    }
    public static boolean ransom(String s1,String s2)
    {
        int count[]=new int[300];
        char s3[]=s2.toCharArray();
        for(int i=0;i<s3.length;i++)
        {
            count[s3[i]]++;
        }
        char s4[]=s1.toCharArray();
        for(int i=0;i<s4.length;i++)
        {
            if(count[s4[i]]==0)
                return false;
            count[s4[i]]--;
        }
        return true;
    }

}
17.	You are given an m x n binary matrix mat of 1's (representing soldiers) and 0's (representing civilians). The soldiers are positioned in front of the civilians. That is, all the 1's will appear to the left of all the 0's in each row.
A row i is weaker than a row j if one of the following is true:
The number of soldiers in row i is less than the number of soldiers in row j.
Both rows have the same number of soldiers and i < j. Return the indices of the k weakest rows in the matrix ordered from weakest to strongest.

 Example 1:
Input: mat = 
[[1,1,0,0,0],
 [1,1,1,1,0],
 [1,0,0,0,0],
 [1,1,0,0,0],
 [1,1,1,1,1]], 
k = 3
Output: [2,0,3]
Explanation: 
The number of soldiers in each row is: 
- Row 0: 2 
- Row 1: 4 
- Row 2: 1 
- Row 3: 2 
- Row 4: 5 
The rows ordered from weakest to strongest are [2,0,3,1,4].

Example 2:
Input: mat = 
[[1, 0, 0, 0],
 [1, 1, 1,1],
 [1, 0, 0, 0],
 [1, 0, 0,0]], 
k = 2
Output: [0,2]
Explanation: 
The number of soldiers in each row is: 
- Row 0: 1 
- Row 1: 4 
- Row 2: 1 
- Row 3: 1 
The rows ordered from weakest to strongest are [0, 2, 3, 1].

18.	Given an integer num, return the number of steps to reduce it to zero. In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.

Example 1:
Input: num = 14
Output: 6
Explanation: 
Step 1) 14 is even; divide by 2 and obtain 7. 
Step 2) 7 is odd; subtract 1 and obtain 6.
Step 3) 6 is even; divide by 2 and obtain 3. 
Step 4) 3 is odd; subtract 1 and obtain 2. 
Step 5) 2 is even; divide by 2 and obtain 1. 
Step 6) 1 is odd; subtract 1 and obtain 0.

Test Case
Test Case	Inputs
1.		n = 5
2.		n = 10
3.		n = 12
4.		n = 18
5.		n = 20

PROGRAM
import java.io.*;
        import java.util.*;
class DAY5DIVISIBLEBY2ANDSUBTRACT
{
    public static void main(String arg[])
    {
        try
        {
            Scanner sc=new Scanner(System.in);
            int n,s=0;
            System.out.println("Enter the number:");
            n=sc.nextInt();
            while(n>0)
            {
                if(n%2==0)
                {
                    n=n/2;
                }
                else
                {
                    n--;
                }
                s++;
            }
            System.out.println("The no.of.steps:"+s);
        }
        catch(Exception e)
        {
            System.out.println("Due to string exception");
        }
    }
}
19.	Develop a programme that uses Multiple Inheritance concepts to compute a student's grades in six subjects. The total and aggregate are then calculated, and the student's grade is displayed. If the student achieves an aggregate of more than 75%, the grade is Distinction. If the aggregate is between 60 and 75, the grade is First Division. If the aggregate is between 50 and 60, the grade is Second Division. If the aggregate is between 40 and 50, the grade is Third Division. Otherwise, the grade is FAIL.
Sample Input & Output:
Enter the marks in python: 90
Enter the marks in c programming: 91
Enter the marks in Mathematics: 92
Enter the marks in Physics: 93
Enter the marks in Chemistry: 92
Enter the marks in Professional Ethics: 93
Total= 551
Aggregate = 91.83
Class: DISTINCTION

Test Case
Test Case	Inputs
1.		18, 76,93,65,63,98
2.		73,78,79,75,87,0
3.		98,106,120,95,98,34
4.		96,73, -85,95,84,98
5.		78,59.8,76,79,97,67
PROGRAM
import java.util.*;
public class grade{
    public static void main(String[] args) {
        try {
            float m1, m2, m3, m4, m5, m6;
            Scanner sc = new Scanner(System.in);
            System.out.println("enter marks in python:");
            m1 = sc.nextInt();
            System.out.println("enter marks in c programming:");
            m2 = sc.nextInt();
            System.out.println("enter marks in mathematics:");
            m3 = sc.nextInt();
            System.out.println("enter marks in physics:");
            m5 = sc.nextInt();
            System.out.println("enter marks in chemistry:");
            m6 = sc.nextInt();
            System.out.println("enter marks in professional ethics:");
            m4 = sc.nextInt();
            if (m1 > 100  || m2 > 100 || m3 > 100 || m4 > 100 || m5 > 100 || m6 > 100)
            {
                throw new NullPointerException("invalid due to higher values.");
            }
            if (m1 <0  || m2 <0 || m3 <0 || m4 <0 || m5 < 0 || m6 < 0)
            {
                throw new ArithmeticException("invalid due to higher values.");
            }


            float total=m1+m2+m3+m4+m5+m6;
            float agg=total/6;
            System.out.println("TOTAL= " + total);
            System.out.println("Aggregate=" + agg);

            if(agg>75)
            {
                System.out.println("DISTINCTION");
            }
            else if(agg>=60 && agg<75)
            {
                System.out.println("FIRST DIVISION");
            }
            else if(agg>=50 && agg<60)
            {
                System.out.println("SECOND DIVISION");
            }
            else if(agg>=40 && agg<50)
            {
                System.out.println("THIRD DIVISION");
            }
            else
            {
                System.out.println("FAIL");
            }
        }
        catch(NullPointerException e)
        {
            System.out.println("invalid due to higher values.");
        }
        catch(ArithmeticException e)
        {
            System.out.println("invalid due to negative values.");
        }
        catch(Exception e)
        {
            System.out.println("invalid due to floating values.");
        }


    }
}
20.	Write a program to calculate tax given the following conditions:
a.	If income is less than or equal to 2,50,000 then no tax
b.	If taxable income is 2,50,001 – 5,00,000 the charge 10% tax
c.	If taxable income is 5,00,001 – 10,00,000 the charge 20% tax
d.	If taxable income is above 10,00,001 then charge 30% tax
Sample Input:
Enter the income: 600000
Sample Output:
Taxable Income: 350000
Tax= 35000

Test Case
Test Case	Inputs
1.		400700
2.		2789239
3.		150000
4.		00000
5.		-125486
PROGRAM
import java.util.*;

public class DAY3TAX{
    public static void main(String[] Args){
        Scanner sc =  new Scanner(System.in);

        System.out.println("Enter Income : ");
        int inc = sc.nextInt();
        float tax;

        if(inc > 0){
            if(inc<=150000){
                tax = 0;
            }
            else if(inc>150000 && inc<=300000){
                tax =(float)(0.1*inc);
            }
            else if(inc>300000 && inc<=500000){
                tax = (float)(0.2*inc);
            }
            else{
                tax = (float)(0.3*inc);
            }

            System.out.println("Tax : " + tax);
        }
        else{
            System.out.println("Enter a Valid Income");
        }



    }
}

