#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Ajay Kedia
# Fall 2018
# CSCI 3308
# Univerity of Colorado
# Text Processing Module


import unittest
import textproc
import re


class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_constructor(self):
        a = 8
        b = 'Hello'
        self.assertRaises(Exception, lambda : textproc.Processor(a,b))

    def test_sum(self):
        sum = 10
        p = textproc.Processor(8,2)
        self.assertEqual(sum, p.sum(), "'sum' was wrongly counted in processor")

    def test_negative_sum(self):
        sum = -10
        p = textproc.Processor(-8,-2)
        self.assertEqual(sum, p.sum(), "sum is positive")

    def test_count_zeros(self):
        sum = 100
        p = textproc.Processor(98,2)
        count = 0
        while(sum>0):
            rem = sum%10
            if(rem == 0):
                count += 1
            sum = int(sum/10)
        self.assertEqual(count, p.count_zeros_in_sum(), "function is throwing exception")


    # Add Your Test Cases Here...

# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()

    # a = TextprocTestCase();

