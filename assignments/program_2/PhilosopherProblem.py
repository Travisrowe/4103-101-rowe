"""
Travis Rowe
11/8/2016
4103-101
Dining Philospher's problem
This program implements an Arbitrator Solution for the Dining Philosopher's Problem.
"""
import threading
import os
import sys
from os import system
#import curses
import locale
import time
import signal
import random
import json
import struct

"""=========================================================="""

# Layout of the table (P = philosopher, f = fork):
#          P0
#       f3    f0
#     P3        P1
#       f2    f1
#          P2

# Number of philosophers at the table. 
# There'll be the same number of forks.
numPhilosophers = 4

# Lists to hold the philosophers and the forks.
# Philosophers are threads while forks are locks.
philosophers = []
forks = []

#Mutex that will only allow one person to pick up forks at a time
waiter = threading.Lock()

class Philosopher(threading.Thread):
    def __init__(self, index):
        
        threading.Thread.__init__(self)
        self.index = index
	#amount of time Philosopher has eaten
        self.time = 0
        

    def run(self):
        # Assign left and right fork
        leftForkIndex = self.index
        rightForkIndex = (self.index - 1) % numPhilosophers
        forkPair = ForkPair(leftForkIndex, rightForkIndex)
        """
        # This prints out the threads name on the left of our "progress bar"
        with screenLock:
            self.window.cprint(self.cell.row, self.cell.col, str(self.index),self.color)
        self.cell.col += 5
        """
        # Eat forever
        while True:
            try:
                waiter.acquire()
                forkPair.pickUp()
                print("Philosopher " + str(self.index) + " eats for .5 seconds.")
                self.time += .5
                forkPair.putDown()
                waiter.release()
            except:
                continue;
		
class ForkPair:
    def __init__(self, leftForkIndex, rightForkIndex):
        # Order forks by index to prevent deadlock
        if leftForkIndex > rightForkIndex:
            leftForkIndex, rightForkIndex = rightForkIndex, leftForkIndex
        self.firstFork = forks[leftForkIndex]
        self.secondFork = forks[rightForkIndex]
    

    def pickUp(self):
		# Acquire by starting with the lower index
        self.firstFork.acquire()
        self.secondFork.acquire()

    def putDown(self):
        # The order does not matter here
        self.firstFork.release()
        self.secondFork.release()
		
if __name__ == "__main__":

    # Create philosophers and forks
    for i in range(0, numPhilosophers):
        philosophers.append(Philosopher(i))
        forks.append(threading.Lock())

    # All philosophers start eating
    for philosopher in philosophers:
        philosopher.start()
	
    # Allow CTRL + C to exit the program
    try:
        True
            
    except (KeyboardInterrupt, SystemExit):

        #Unfortunately, does not print these four lines before exiting.
        print("Philosopher 1 ate for " + str(philosophers[0].time) + " seconds.")
        print("Philosopher 2 ate for " + str(philosophers[1].time) + " seconds.")
        print("Philosopher 3 ate for " + str(philosophers[2].time) + " seconds.")
        print("Philosopher 4 ate for " + str(philosophers[3].time) + " seconds.")
        
        os.exit(0)