package collections;

import java.util.ArrayList;
import java.util.Collections;

public class arraylistdemo {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList <String> stlist=new ArrayList<String>();
		
		
		//adding string objects
		stlist.add("Rama");
		stlist.add("Sita");
		stlist.add("Lakshman");
		stlist.add("Bhavana");
		stlist.add("Venkat");
		stlist.add("Bharath");
		
		//display elements and its size
		System.out.println(stlist);
		System.out.println("size of list: "+stlist.size());
		
		//adding and setting objects
		stlist.add(2,"new name");
		System.out.println(stlist);
		stlist.set(3,"set name");
		System.out.println(stlist);
		
		//indexOf and getting specific index objects
		System.out.println("Index of Rama:"+stlist.indexOf("Rama"));
		System.out.println("Index of xyz:"+stlist.indexOf("xyz"));
		
		String str=stlist.get(4);
		System.out.println("4th location value:"+str);
		
		//contains operation
		System.out.println(stlist.contains("Sita"));
		System.out.println(stlist.contains("xyz"));
		
		//remove objects
		stlist.remove(2);
		//stlist.remove("new name");
		System.out.println(stlist.remove("new name"));
		System.out.println(stlist);
		
		//iterating list
		for(String s:stlist)
			System.out.println(s);
		
		//sorting list
		Collections.sort(stlist);
		System.out.println(stlist);
		
		
		ArrayList <String> st=new ArrayList<String>(stlist);
		//whether the objects of one list contains in another list
		System.out.println(st.equals(stlist));
		
		ArrayList<String> al=new ArrayList<String>();
		al.add("Rama");
		//al.add("Sita");
		al.add("Sitarama");
		System.out.println(stlist.containsAll(al));
	}

}
