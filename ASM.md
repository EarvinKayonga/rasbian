# Learning ASM

* output to the screen

```
 MOV R7, #4 // to the screen
 MOV R0, #1 // to the monitor
 MOV R2, #10 // 10 is the length of the message
 LDR R1  =message // load the message to R1
```

* get message from the keyboard

```
 MOV R7, #3 // waiting for input
 MOV R0, #0 // from the kb
 MOV R2, #10 // 10 is the length of the message
 LDR R1  =message // load the received message to R1
```

return to terminal
```
end:
	MOV R7, #1
	SWI 0
```


Data section
```
.data
message:
	.ascii " "
```

### Common operations

instruction form:
```
<instructions>, <destination>, <operande>, <operande>
example :
MUL R0, R1, R2
```
