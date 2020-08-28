from sage.all import var
import imap
import numpy as np

if __name__ == "__main__":
    variables_strings = ['x']
    x = var('x')
    variables = [x]
    length = 5
    S = np.random.randint(low=0, high=10, size=length)
    print(S, '\n')
    p = imap.imap(S, length, 1, variables)
    print('p = {}'.format(p), '\n')
    for i in range(length):
        print(imap.eval_func(p, variables_strings, [i]))
