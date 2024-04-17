n = input()

score = input()

score_list = list(map(int, score.split()))

m = max(score_list)
sum = 0
for i in score_list:
    sum += i

avg = sum * 100 / m / len(score_list)
print(avg)
