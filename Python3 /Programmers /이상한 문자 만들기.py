# 이상한 문자 만들기 : https://school.programmers.co.kr/learn/courses/30/lessons/12930

def solution(s):
    answer = ''
    for i in list(s.split()):            # 공백 기준으로 문자열 나누기 및 리스트로 변환 후 반복문으로 단어 하나씩 반복
        for j in range(len(i)):          # 단어 길이만큼 반복
            if j%2 == 0:                 # j가 짝수이면 j 인덱스의 문자열을 대문자로 변환 및 answer에 추가
                answer += i[j].upper()
            else:                        # j가 홀수면 j 인덱스의 문자열 answer에 추가
                answer += i[j]
        answer += ' '                    # 단어 한 개가 끝나면 단어 뒤에 공백 추가
    return answer.rstrip()               # 맨 오른쪽 끝 공백 제거하여 리턴
