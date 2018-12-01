# -*- coding: utf-8 -*-

# Ajay Kedia
# Fall 2018
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

"""
A simple module with various numerical calculations

"""

import re

# Exceptions

class TextProcError(Exception):
    """
    Base Class for TextProc Exceptions

    """

    def __init__(self, msg):
        """
        TextProcError Constructor

        :param msg: error message
        :return: TextProcError instance

        """

        super().__init__(msg)

# Public Classes

class Processor:

    def __init__(self, a, b):
        """
        # simple constructor
        :param int a - an integer number
        :param int b - an integer number
        :return: Processor instance
        """

        if type(a) and type(b) is not int:
            raise TextProcError("Processors requires intergers")

        self.a = a
        self.b = b

    def sum(self):

        """
        :return: sum of two numbers
        """

        return self.a + self.b

    def is_negative_sum(self):
        """
        :return: check that sum is negative or not
        """

        if self.sum() < 0:
            return True
        else:
            return False

    def count_zeros_in_sum(self):
        """
        :return: count number of zeroes in sum
        """
        s = self.sum()
        count = re.compile(r'[0]')
        return len(count.findall(str(s)))
