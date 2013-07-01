from itertools import islice

class Counter:
    def __init__(self, start):
        self.start = start

    def __next__(self):
        val = self.start
        self.start += 1
        return val

    def __iter__(self):
        return self

c = Counter(42)
print(list(islice(c, 5)))
