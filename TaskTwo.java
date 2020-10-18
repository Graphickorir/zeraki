import java.util.Arrays; 

public class TaskTwo { 
    public static void main(String[] args) { 
    	String s = "Lorem at";
    	
    	System.out.println(reverseArr(s));
    }
    private static String reverseArr(String s){
    	String[] arr = s.split("");
    	int x = arr.length;
    	int counter = 0;
    	int counter2 = 0;
    	String[] ans = new String[x];

    	while(counter < x){
    	String[] arr2 = new String[4];
		    for(int i=0; i<4;i++){
		    	arr2[i%4] = arr[counter];
		    	counter += 1;
		    }
		    int a=4;
		    for (int i=0;i<4;i++) { 
	            ans[counter2] = arr2[a - 1]; 
	            a = a - 1; 
	            counter2++;
	        }
    	}
    	return Arrays.toString(ans);
    }
}