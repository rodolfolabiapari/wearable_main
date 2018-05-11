# !/usr/bin/python

import os, sys
import time

import serial, thread

porta = '/dev/rfcomm'
numero = 0
baud_rate = 9600
key = 1

def read_char():
	info = rf.read()
	print info
	return info

def read_float():
    f = '0'
    number = read_char()
    while (number != 'e'):
        f += number
	number = read_char()
    return f

def write_char(caractere):
	rf.write(caractere)
	rf.flush()

def listen():
	print '\nStarting Read Thread'
	while (key != 0 and key != 2):
		menu = read_char()
		if (menu == '?'):
			write_char('1')

		elif (menu == 'd'):
			write_char('1')
			quant_sensors = int(read_char())

			write_char('1')
			distances = []
                        variances = []
                        sds       = []
			for i in range(0, quant_sensors):
				distance = '0'
				number = read_char()
				while (number != 'e'):
					distance += number
					number = read_char()
				#write_char('1')
				distances.append(distance)

                                variance = '0'
				number = read_char()
				while (number != 'e'):
					variance += number
					number = read_char()
				#write_char('1')
				variances.append(variance)

                                sd = '0'
				number = read_char()
				while (number != ';'):
					sd += number
					number = read_char()
				#write_char('1')
				sds.append(sd)

		elif (menu == 's'):
			situation = read_char()
			write_char('1')

			print 'Key:'+ `key` + '  D|V|SD:' + ' '.join(distances) + '|'  + ' '.join(variances) +  '|'  + ' '.join(sds) + 'cm  \n|---Sts:' + situation + '   Dt:' + str(time.ctime())[8:19] + '   (0) Exit (2) Stop'
	print 'Closing read thread'
	
if (len(sys.argv) == 4):
        rf = serial.Serial()
        rf.baudrate = sys.argv[3]
        rf.port = sys.argv[1] + sys.argv[2]

	print 'Opening'
        rf.open()
        print 'The socket is open: ' + str(rf.is_open)

	while (key != 0):
		if (key != 2):
			thread.start_new_thread(listen, () )
			key = input()
		else:
			rf.flush()
			#thread.exit()
			key = input('(0) Exit (1) Continue')
	
	print 'Closing the program, bye'
        rf.close()
	print 'Closed'

elif (len(sys.argv) == 1):
	rf = serial.Serial()
	rf.baudrate = baud_rate
	rf.port = porta + str(numero)

	rf.open()
	rf.is_open
	rf.close()

else :
	print 'Error: <name> <port> <number> <baud_rate>\n'
	sys.exit()



