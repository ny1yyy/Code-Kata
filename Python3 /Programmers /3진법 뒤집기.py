def solution(n):
    answer = 0    # 리턴할 변수
    bb = ''       # 3진법 저장할 변수
    up = 0        # 배수

    # 10진법 -> 3진법 변환
    while n:                  # n이 0이 될때까지 반복
        rem = n%3             # 3으로 나눈 후 나머지 저장
        bb = str(rem)+bb      # 나머지를 bb 문자열에 저장
        n = n//3              # n을 3으로 나눴을 때의 몫을 다시 n에 저장
    
    bb = bb[::-1]             # 문자열 역순 정렬

    # 3진법 -> 10진법
    for i in reversed(bb):               # reversed()를 이용하여 문자열 뒤에서부터 꺼내기
        answer += int(i) * (3 ** up)     # 첫째자리 문자열을 정수로 변환 후 3의 배수와 곱
        up += 1                          # 배수 증가
    
    return answer
