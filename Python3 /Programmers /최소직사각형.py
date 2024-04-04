# 최소직사각형 : https://school.programmers.co.kr/learn/courses/30/lessons/86491

def solution(sizes):
    a, b = 0, 0
    
    for i in range(len(sizes)):
        if sizes[i][0] < sizes[i][1]:
            sizes[i][0], sizes[i][1] = sizes[i][1], sizes[i][0]
        a = max(a, sizes[i][0])
        b = max(b, sizes[i][1])
            
    return a*b
