
run 'b' to build  or run 't' to build and run test.py


Given:

In C++

	struct Foo ... increments a counter in the ctor, decrements it in the dtor

	struct Bar : public Foo ...

	typedef std::shared_ptr<Foo> FooPtr


In swig:


	using stl.i to enable swig objects to work with c++ standard containers

	declaring vector_Foo as an std:::vector<FooPtr>


In test.py:

	def test():
		# we should be able to create a vector<std::shared_ptr<Foo>> from a list of Bar objects
		v = vector_Foo([Bar(), ])  # this gives an assertion
	
	test()




Tested against swig-3.0.2, swig-3.0.12 and master HEAD.  All hit the assert:

	python3: foo_wrap.cxx:2314: int SWIG_Python_ConvertPtrAndOwn(PyObject*, void**, swig_type_info*, int, int*): Assertion `own' failed.

