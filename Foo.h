#ifndef Foo_H_
#define Foo_H_

#include <memory>

extern int FooCount;
struct Foo
{
    Foo()
    {
        FooCount++;
    }   

    virtual ~Foo()
    {
        FooCount--;
    }

    static void printCount() { printf("FooCount: %d\n", FooCount); }
};

typedef std::shared_ptr<Foo> FooPtr;

#endif // Foo_H_
