CXX = g++
CXXFLAGS = -c -Wall -fPIC
AR = ar
ARFLAGS = rcs

TARGET = libhelloworld.a
SRCS = helloworld.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f $(OBJS) $(TARGET) 