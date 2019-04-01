#!/usr/bin/env python3

import foo

def test():
    # we should be able to store a vector of Foo objects (but shared_ptr<Foo> objects actually)
	v = foo.vector_Foo([foo.Bar(), ])
	foo.Foo.printCount() # expecting 1 Foo object to exist

foo.Foo.printCount() # 0 Foo objects in existence
test()
foo.Foo.printCount() # should still be 0 Foo objects in existence... else it leaked (which the failing assert() is anticipating)
