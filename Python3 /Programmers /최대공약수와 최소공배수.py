# 최대공약수와 최소공배수 : https://school.programmers.co.kr/learn/courses/30/lessons/12940

def solution(n, m):
    answer = []
    
    aa = [1, n]
    bb = [1, m]
    
    # 최대공약수
    for i in range(2, n):
        if i in aa:
            break
        if n%i == 0:
            if i == n//i:
                aa.append(i)
            else:
                aa.extend([i, n//i])
    
    for j in range(2, m):
        if j in bb:
            break
        if m%j == 0:
            if j == m//j:
                bb.append(j)
            else:
                bb.extend([j, m//j])
    
    both = list(set(aa) & set(bb))

    # 최대공약수, 최소공배수 출력
    # 최소공배수 : 두 수의 곱 / 두 수의 최대공약수
    answer.extend([max(both), n*m/max(both)])
    
    return answer
