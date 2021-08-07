'''# 201
def print_coin():
    print("비트코인")

# 202
print_coin()

# 203
for i in range(100):
    print_coin()

# 204
def print_coins():
    for i in range(100):
        print("비트코인")

# 205

# 206
# A B C A B

# 207
# A C B

# 208
# A C B E D

# 209
# B A

# 210
# B C B C B C A

# 211
# 안녕, Hi

# 212
# 7, 15

# 213
# 매개변수를 넘겨주지 않음

# 214
# 문자열 + 숫자는 성립이 안된다

# 215
def print_with_smile(text):
    print(text + ':D')

# 216
print_with_smile("안녕하세요")

# 217
def print_upper_price(price):
    print(price * 1.3)

# 218
def print_sum(a,b):
    print(a + b)

# 219
def print_arithmetic_operation(a, b):
    print(f"{a} + {b} = {a + b}")
    print(f"{a} - {b} = {a - b}")
    print(f"{a} * {b} = {a * b}")
    print(f"{a} / {b} = {a / b}")

# 220
def print_max(a, b, c):
    if a > b and a > c:
        print(a)
    elif b > a and b > c:
        print(b)
    elif c > a and c > b:
        print(c)

# 221
def print_reverse(a):
    print(a[::-1])

# 222
def print_score(score_list):
    return sum(score_list) / len(score_list)
print(print_score([1, 2, 3]))



# 223
def print_even(list):
    for i in range(len(list)):
        if list[i] % 2 == 0:
            print(list[i])
print_even([1, 3, 2, 10, 12, 11, 15])

# 224
def print_keys(a):
    return list(a.keys())
r = print_keys({"이름":"김말똥", "나이":30, "성별":0})
for i in r:
    print(i)

# 225
def print_5xn(string):
    i = 0
    for c in string:
        if i % 5 == 0 and i != 0:
            print()
        print(c, end='')
        i += 1
print_5xn("아이엠어보이유알어걸")

# 226
def print_mxn(string, m):
    i = 0
    for c in string:
        if i % m == 0 and i != 0:
            print()
        print(c, end='')
        i += 1
print_mxn("아이엠어보이유알어걸", 3)
'''
# 228
def calc_monthly_salary(annual_salary):
    return annual_salary // 12
