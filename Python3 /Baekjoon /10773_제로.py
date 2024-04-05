# 10773번(제로) : https://www.acmicpc.net/problem/10773

iter_num = int(input())
num_list = []

for i in range(iter_num):
  n = int(input())
  if n > 0:
    num_list += [n]
  else:
    del num_list[-1]   # del 명령문 사용
  # num_list.pop()     # pop 메서드 사용

print(sum(num_list))
