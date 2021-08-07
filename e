def solution(answers):
    p1 = [1, 2, 3, 4, 5]
    p2 = [2, 1, 2, 3, 2, 4, 2, 5]
    p3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    p1_s = 0
    p2_s = 0
    p3_s = 0
    
    i = 0
    for ans in answers:
        if p1[i % len(p1)] == ans:
            p1_s += 1
        if p2[i % len(p2)] == ans:
            p2_s += 1
        if p3[i % len(p3)] == ans:
            p3_s += 1
        i += 1
    answer = []
    if max(p1_s, p2_s, p3_s) == p1_s:
        answer.append(1)
    if max(p1_s, p2_s, p3_s) == p2_s:
        answer.append(2)
    if max(p1_s, p2_s, p3_s) == p3_s:
        answer.append(3)
    return answer
