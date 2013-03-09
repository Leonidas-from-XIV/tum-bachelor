def generate():
    print("Hello")
    yield 1
    print("World")
    yield 2

gen = generate()
print(next(gen))
print(next(gen))

for value in generate():
    print(value)
