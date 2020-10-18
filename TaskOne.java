
import java.util.Arrays; 

public class TaskOne  { 
    public static void main(String[] args) { 
    	int[] k = {3,5,4,1};
		
    	System.out.println(missingInt(k));
    }

    private static int missingInt(int[] k){
		Arrays.sort(k);
		int s = k.length;
		int val = 0;
    	for (int i=0;i < s;i++){
    		if(i+1 == s)
    			val = k[s-1] + 1;
    		else if(k[i]+1 == k[i+1]){
			 	continue;
    		}else{
    			val = k[i]+1;
			 	break;
    		}
		}
		return val;
    }
}