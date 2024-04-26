# Compiler 설정
CC=gcc
# 컴파일 시 사용할 플래그
CFLAGS=-Wall -g

# 최종 타겟
TARGET=foo

all: $(TARGET)

# 타겟과 의존성
$(TARGET): test.o
	$(CC) $(CFLAGS) test.o -o $(TARGET)

# 소스 파일로부터 오브젝트 파일 생성
test.o: test.c
	$(CC) $(CFLAGS) -c test.c

# 'make clean'을 사용하여 오브젝트 파일과 실행 파일 정리
clean:
	rm -f $(TARGET) test.o

# 유사 목표 (phony target) 설정
.PHONY: all clean
