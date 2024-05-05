# 11399번(ATM) : https://www.acmicpc.net/problem/111399
'''
그리디 알고리즘(탐욕법, Greedy Algorithm) 이란?

최적의 값을 구해야 하는 상황에서 사용되는 근시안적인 방법론으로 ‘각 단계에서 최적이라고 생각되는 것을 선택’ 해 나가는 방식으로 진행하여 최종적인 해답에 도달하는 알고리즘입니다.
이때, 항상 최적의 값을 보장하는것이 아니라 최적의 값의 ‘근사한 값’을 목표로 하고 있습니다.
주로 문제를 분할 가능한 문제들로 분할한 뒤, 각 문제들에 대한 최적해를 구한 뒤 이를 결합하여 전체 문제의 최적해를 구하는 경우에 주로 사용됩니다.

출처 : https://adjh54.tistory.com/212#google_vignette
'''
# 방식 1 -------------------------------------------------
accum = 0
accum_sum = 0
people = int(input())
time = sorted(map(int, input().split()))

for i in range(people):
  accum += time[i]
  accum_sum += accum

print(accum_sum)


# 방식 2 -------------------------------------------------
time_sum = 0
people = int(input())
time = sorted(map(int, input().split()))

for i in range(people):
  time_sum += time[i] * (people-i)

print(time_sum)


# 번호까지 -----------------------------------------------
accum = 0
accum_sum = 0
people = list(range(1, int(input())+1))
time = list(map(int, input().split()))
people_new = []

pt = list(zip(people, time))
pt.sort(key=lambda x:x[1]) 

for i in pt:
  accum += i[1]
  accum_sum += accum
  people_new += [i[0]]

print(accum_sum)
print(people_new)
