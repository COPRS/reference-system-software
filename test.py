#!/usr/bin/python

import unittest
import app


class UneClasseDeTest(unittest.TestCase):

    def test_addition(self):
        result = app.addition(1,1)
        self.assertEqual(result,2)

if __name__ == '__main__':
    unittest.main()