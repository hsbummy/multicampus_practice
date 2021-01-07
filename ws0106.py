# 프로그램 기획
# 프로그램 시나리오와 디테일한 프로세스를 기입
# 작성하여 workshop 게시판에

# 제목: 1조 workshop


#Small Casino Project

# 1. 5가지의 미니게임 존재
# 2. 사용자는 초기에 X원을 갖고 시작
# 3. 게임별로 돈을 벌 수 있고 잃을 수도 있다.
# 4. userMoney를 전역변수로 설정
#   userMoney = 5천만원
# Game을 자유롭게 즐기되 가진 돈이 0원 밑으로 떨어질 경우 추방


# 게임의 종류
# 숫자야구, Number Guess, 잭팟!, 블랙잭, Coin Toss, 보물찾기, 도둑잡기, hang-man,

# Coin Toss : 재영님
# hang-man, 숫자야구, 전체 통합 : 경주
# Number Guess, 잭팟(try) : 상범님
# 블랙잭 : 현수님


#Example

# Coin Toss
"""
    최소 금액 X원이 존재
    초기 동전을 던진다. -> 이후에 앞뒷면이 같은 동전이 나오면 기존의 상금만큼 상금이 누적된다
    -> 사용자는 Go 와 Stop을 외칠수 있다.
    Stop을 외칠 경우 지금까지 쌓인 상금을 획득
    Go를 외치고 앞뒷면이 다른 동전이 나올 경우 상금을 잃고 게임이 끝난다.
"""


'''
    임의의 값 하나가 정해진다(범위 : 1~99)
    유저가 숫자를 입력한다.
    유저가 말한 값이 정해진 값과 일치할 때까지 5번의 주어진다.
    
'''

def p1_play():
    #1~ 99까지의 숫자 중 무작위로 하나를 선택합니다.
    import random
    number = random.randrange(1, 100)
    print("랜덤게임~ game start")
    award = 3000
    # 1부터 99까지 숫자를 입력 하되 100이상이거나 0이하인 수를 제외합니다.
    while True:
        guess = int(input('소주병뚜껑 숫자 맞히기 : 1부터 99까지., 숫자를 한 개 입력해보세요~~?'))
        if guess >= 100 or guess <=0:
            print("잘못된 값을 입력하셨습니다.")
            continue
        '''숫자를 맞추게 되면 1000만원을 획득하고, 틀릴 시에는 500만원을 차감합니다.
            사용자가 입력한 숫자가  정답보다 클 경우 down을 말해 값을 내리라고 말해줄 것이며
            사용자가 입력한 숫자가 정답보다 작을 경우 up을 말해 값을 더 키우라고 합니다.
            총 남은 금액을 합산해 상금으로 획득하게 됩니다.'''
        while True:
            if guess == number:
                award += 1000
                print("{0} 만원을 획득하셨습니다.\nGG\n축하합니다!!!".format(award))
                break

            if guess > number:
                    print("DOWN")
                    award -= 500
                    print()
                    print("남은 금액: {0} 만원".format(award))
                    break

            elif guess < number:
                    print("UP")
                    award -= 500
                    print()
                    print("남은 금액: {0} 만원".format(award))
                    break

                    print("획득 금액 {0}만원".format(award))

                    return award


p1_play()



