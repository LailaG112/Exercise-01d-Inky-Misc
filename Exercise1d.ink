/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR hour = -1

-> school

=== school ===
School just let out and you find yourself in bed sleeping the day away. 
*[Continue] -> summer

=== summer ===
Your parent encouarage you to go the beach to cool off and relax
*[Go to the beach]-> seashore
-> seashore

== seashore ==
You are sitting on the beach. 

It is {timer()} in the {advance_time() } 
{timer == 1: There are some food stands to your right.}

*[Buy ice cream]-> ice_cream
*[Buy a hotdog] -> hotdog
*[Buy popcorn] -> popcorn
+ [Stroll down the beach] -> beach2
-> DONE

=== ice_cream ===
It tastes just as good as you remember
*[Go back] -> seashore
-> END

=== hotdog ===
You got ketchup all over your bathing suit
*[Go back] -> seashore
-> END

=== popcorn ===
Some popcorbn kernels get stuck in your teeth
*[Go back] -> seashore
-> END


== beach2 ==
This is further down the beach.

It is {timer()} in the {advance_time() }
*{ time == 1 } [Pick up sea shells] -> shells
+ [Stroll back up the beach] -> seashore
*[Go home for the day?]-> home

== shells ==
You pick up the shells
-> beach2

== home==
You go home to after a relaxing day at the beach
-> END
== function advance_time ==

    ~ time = time + 1 
    
    {
        - time > 2:
        ~ time = 0 
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Afternoon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    === function timer ===
    
         ~ hour = hour + 1
         
         {
           - hour > 2:
           ~ hour = 0
         
         }
         
         {
          -  hour == 0:
            ~ return "9"
            
          - hour == 1:
            ~ return "12"
            
            - hour == 2:
            ~ return "10"
            
         

         
         
         }


    
    
    
