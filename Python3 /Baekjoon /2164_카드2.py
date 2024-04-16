# 2164번(카드2) : https://www.acmicpc.net/problem/2164

# 라이브러리 없이 (백준에 제출 시 시간 초과)
n = int(input())

card = list(range(1,n+1))

while len(card) > 1:
  del card[0]
  card.append(card[0])
  del card[0]

print(*card)               # * 을 붙여주면 리스트의 내용을 대괄호 없이 한번에 출력 가능, 리스트에 Asterisk(*)를 사용하면 리스트 압축 해제


# 라이브러리 사용
'''
왜 collections.deque를 사용하는지 설명 : https://suri78.tistory.com/50
collections.deque 사용법               : https://docs.python.org/3/library/collections.html#collections.deque
'''
from collections import deque

n = int(input())
card = deque(range(1, n+1))

while len(card) > 1:
  card.popleft()
  card.rotate(-1)

print(*card)
