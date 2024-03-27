Write a linux kernel module as a chardev that can perform basic math operations 
[+,-,*,/] on two signed integers.  
It should support accept two operands, an operator and return the calculated result
to userspace.

Write a server application in python3 (gateway to the chardev) which handles math operations
over unix domain sockets or any other IPC(inter-process communication) of choice, to multiple clients.

Write a userspace application in python3 that connects to the server, has basic terminal UI
to request math operations, input the numbers and print out the result.

Client and server should have a communication protocol for acknowledgment 
of the communication and error handling. 

The protocol shall support service announcement (list all available operations 
in the kernel module to the clients).


Sample Output:
```
Client n:			| Server:			| KMSG
(1) Add 2 numbers		| Client connected!		| Device opened!
(2) Multiply 2 numbers  		| 				| 
(3) Subtract 2 numbers 		| 				| 
(4) Divide 2 numbers    	|	 				| 
(5) Exit				| 				| 
Enter command: 1		| 				| 
Enter operand 1: 42		| 				| 
Enter operand 2: 37		| 				| 
Sending request...		| Recevied request ADD(42,37). | Calculating 42 + 37!
Request OKAY...		| Sending result!		|
Receiving response…		| 				|	
Result is 79!			| 				|	
```

The ideal project should be buildable by CMake (or any other suitable tool) 
and contained in a git repo (e.g. githhub).  

Bonus points for implementation of a C client in addition to the python3 client.
(both C/python should work simultaneously)
Preferred kernel version >= 5.x.  
Preferred python version >= 3.10  
Expected project execution time 20d.
