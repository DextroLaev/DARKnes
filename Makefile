####################################

#Makefile
#Author:Anirban Chowdhury
#Copyright(c),2021,Anirban Chowdhury 

####################################

#Add necessary aliases
target=DARKnes
main=src/main.c
driver=src/*/*.c
all default $(target):$(main) #put rest of ingredients 1 line and at most 1 alias#no explicit filenames
		#write the receipe 1 line

$(main): driver.o
	gcc -o $(target) *.o

driver.o: $(driver)
	gcc -c -Iinc $(driver) $(main)

clean:
	#write the receipe to clean the target and
	#any other obj files created in build process
	rm -f $(target) *.o