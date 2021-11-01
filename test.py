"""
Can be executed as
$ python3 -m unittest test.py
$ python3 test.py
$ nosetests
$ pytest test.py
"""
import unittest
import numpy as np
import wgn

class TestWGN(unittest.TestCase):

    def test_wgn_variance(self):
        sigma2 = 3.2;
        N = 100000;
        x = wgn.wgn(sigma2, N);
        self.assertAlmostEqual(np.var(x), sigma2, places=2)

    def setUp(self):
        np.random.seed(938475)

if __name__ == '__main__':
    unittest.main()