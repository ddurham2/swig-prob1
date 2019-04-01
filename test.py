#!/usr/bin/env python3

import foo

def test():
	f = foo.Bar()
	v = foo.vector_Foo([f ])
	foo.Foo.printCount()

foo.Foo.printCount()
test()
foo.Foo.printCount()
